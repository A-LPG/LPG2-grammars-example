import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.nio.file.Files;
import java.nio.file.Path;

/**
 * Reflective lexer+parser driver for grammars-example Java backends.
 *
 * Usage: ParseDriver <package> <LexerClass> <ParserClass> <input-file>
 */
public class ParseDriver {
    public static void main(String[] args) throws Exception {
        if (args.length != 4) {
            System.err.println("Usage: ParseDriver <package> <Lexer> <Parser> <file>");
            System.exit(2);
        }
        String pkg = args[0];
        String lexerName = args[1];
        String parserName = args[2];
        Path input = Path.of(args[3]);
        if (!Files.isRegularFile(input)) {
            System.err.println("not a file: " + input);
            System.exit(2);
        }

        Class<?> lexerClass = Class.forName(pkg + "." + lexerName);
        Class<?> parserClass = Class.forName(pkg + "." + parserName);

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
        lexerMethod.invoke(lexer, null, prsStream);

        Method parserMethod = parserClass.getMethod("parser");
        Object ast = parserMethod.invoke(parser);
        if (ast == null) {
            // Empty input (EOF only): automatic_ast often yields null after a
            // successful empty reduction — treat as OK when the token stream
            // has at most the initial + EOF tokens.
            int n = 0;
            try {
                Method getSize = prsStream.getClass().getMethod("getSize");
                n = ((Number) getSize.invoke(prsStream)).intValue();
            } catch (NoSuchMethodException ignored) {
            }
            if (n <= 2) {
                System.out.println("PARSE OK: " + input.getFileName());
                return;
            }
            System.err.println("PARSE FAIL: " + input);
            System.exit(1);
        }
        System.out.println("PARSE OK: " + input.getFileName());
    }
}
