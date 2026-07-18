import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Locale;

/**
 * Timed reflective lexer+parser driver for grammars-example performance reports.
 *
 * Usage:
 *   PerfDriver <package> <Lexer> <Parser> <input-file> [--json]
 *
 * Prints human summary by default, or one JSON object line with --json.
 * Exit 0 on successful parse; 1 on BadParse; 2 on usage/setup errors.
 */
public class PerfDriver {
    public static void main(String[] args) throws Exception {
        if (args.length < 4 || args.length > 5) {
            System.err.println("Usage: PerfDriver <package> <Lexer> <Parser> <file> [--json]");
            System.exit(2);
        }
        boolean json = args.length == 5 && "--json".equals(args[4]);
        String pkg = args[0];
        String lexerName = args[1];
        String parserName = args[2];
        Path input = Path.of(args[3]);
        if (!Files.isRegularFile(input)) {
            System.err.println("not a file: " + input);
            System.exit(2);
        }

        long t0 = System.nanoTime();
        long bytes = Files.size(input);

        Class<?> lexerClass = Class.forName(pkg + "." + lexerName);
        Class<?> parserClass = Class.forName(pkg + "." + parserName);

        long tConstruct0 = System.nanoTime();
        Object lexer;
        try {
            Constructor<?> c = lexerClass.getConstructor(String.class);
            lexer = c.newInstance(input.toAbsolutePath().toString());
        } catch (NoSuchMethodException e) {
            lexer = lexerClass.getConstructor().newInstance();
            Method reset = lexerClass.getMethod("reset", String.class, int.class);
            reset.invoke(lexer, input.toAbsolutePath().toString(), 4);
        }

        Method getILexStream = lexerClass.getMethod("getILexStream");
        Object lexStream = getILexStream.invoke(lexer);

        Constructor<?> parserCtor = null;
        for (Constructor<?> c : parserClass.getConstructors()) {
            if (c.getParameterCount() == 1) {
                parserCtor = c;
                break;
            }
        }
        if (parserCtor == null) {
            throw new IllegalStateException("no 1-arg parser constructor on " + parserName);
        }
        Object parser = parserCtor.newInstance(lexStream);
        Method getIPrsStream = parserClass.getMethod("getIPrsStream");
        Object prsStream = getIPrsStream.invoke(parser);
        long tConstruct1 = System.nanoTime();

        Method lexerMethod = null;
        for (Method m : lexerClass.getMethods()) {
            if (m.getName().equals("lexer") && m.getParameterCount() == 2) {
                lexerMethod = m;
                break;
            }
        }
        if (lexerMethod == null) {
            throw new IllegalStateException("no lexer(monitor, prsStream) on " + lexerName);
        }

        long tLex0 = System.nanoTime();
        lexerMethod.invoke(lexer, null, prsStream);
        long tLex1 = System.nanoTime();

        int tokens = 0;
        try {
            Method getSize = prsStream.getClass().getMethod("getSize");
            Object sz = getSize.invoke(prsStream);
            if (sz instanceof Integer) {
                tokens = (Integer) sz;
            }
        } catch (ReflectiveOperationException ignored) {
        }

        long tParse0 = System.nanoTime();
        boolean ok = false;
        String err = null;
        try {
            Method getParser = parserClass.getMethod("getParser");
            Object dtParser = getParser.invoke(parser);
            Method parse = dtParser.getClass().getMethod("parse");
            parse.invoke(dtParser);
            ok = true;
        } catch (NoSuchMethodException e) {
            try {
                Object ast = parserClass.getMethod("parser").invoke(parser);
                ok = ast != null;
                if (!ok) {
                    err = "null_ast";
                }
            } catch (InvocationTargetException ite) {
                err = causeName(ite);
            }
        } catch (InvocationTargetException e) {
            err = causeName(e);
        }
        long tParse1 = System.nanoTime();
        long t1 = System.nanoTime();

        double constructMs = (tConstruct1 - tConstruct0) / 1e6;
        double lexMs = (tLex1 - tLex0) / 1e6;
        double parseMs = (tParse1 - tParse0) / 1e6;
        double totalMs = (t1 - t0) / 1e6;
        // PT ≈ lex + parse (work on the input); OT ≈ construct + glue
        double ptMs = lexMs + parseMs;
        double otMs = Math.max(0.0, totalMs - ptMs);

        if (json) {
            StringBuilder sb = new StringBuilder(256);
            sb.append('{');
            field(sb, "ok", ok);
            sb.append(',');
            field(sb, "file", input.getFileName().toString());
            sb.append(',');
            field(sb, "path", input.toString());
            sb.append(',');
            field(sb, "bytes", bytes);
            sb.append(',');
            field(sb, "tokens", tokens);
            sb.append(',');
            field(sb, "construct_ms", constructMs);
            sb.append(',');
            field(sb, "lex_ms", lexMs);
            sb.append(',');
            field(sb, "parse_ms", parseMs);
            sb.append(',');
            field(sb, "pt_ms", ptMs);
            sb.append(',');
            field(sb, "ot_ms", otMs);
            sb.append(',');
            field(sb, "tt_ms", totalMs);
            if (err != null) {
                sb.append(',');
                field(sb, "error", err);
            }
            sb.append('}');
            System.out.println(sb);
        } else {
            System.out.printf(
                    Locale.ROOT,
                    "%s ok=%s bytes=%d tokens=%d construct=%.3fms lex=%.3fms parse=%.3fms pt=%.3fms tt=%.3fms%n",
                    input.getFileName(),
                    ok,
                    bytes,
                    tokens,
                    constructMs,
                    lexMs,
                    parseMs,
                    ptMs,
                    totalMs);
        }

        System.exit(ok ? 0 : 1);
    }

    private static String causeName(InvocationTargetException e) {
        Throwable c = e.getCause();
        return c != null ? c.getClass().getSimpleName() : "InvocationTargetException";
    }

    private static void field(StringBuilder sb, String key, boolean v) {
        sb.append('"').append(key).append("\":").append(v);
    }

    private static void field(StringBuilder sb, String key, long v) {
        sb.append('"').append(key).append("\":").append(v);
    }

    private static void field(StringBuilder sb, String key, int v) {
        sb.append('"').append(key).append("\":").append(v);
    }

    private static void field(StringBuilder sb, String key, double v) {
        sb.append('"').append(key).append("\":").append(String.format(Locale.ROOT, "%.6f", v));
    }

    private static void field(StringBuilder sb, String key, String v) {
        sb.append('"').append(key).append("\":\"");
        for (int i = 0; i < v.length(); i++) {
            char ch = v.charAt(i);
            if (ch == '\\' || ch == '"') {
                sb.append('\\').append(ch);
            } else if (ch < 0x20) {
                sb.append(String.format(Locale.ROOT, "\\u%04x", (int) ch));
            } else {
                sb.append(ch);
            }
        }
        sb.append('"');
    }
}
