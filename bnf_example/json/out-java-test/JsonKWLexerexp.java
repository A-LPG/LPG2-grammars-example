package lpg.grammars.json;

public interface JsonKWLexerexp {
    public final static int
      TRUE = 1,
      FALSE = 2,
      NULLLITERAL = 3;

    public final static String orderedTerminalSymbols[] = {
                 "",
                 "TRUE",
                 "FALSE",
                 "NULLLITERAL"
             };


    public final static int numTokenKinds = 3;
    public final static boolean isValidForParser = false;
}
