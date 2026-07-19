package lpg.grammars.swift_fin;

public interface SwiftFinLexerexp {
    public final static int
      IDENTIFIER = 1,
      EOF_TOKEN = 2,
      B4_COLON = 3,
      B4_CRLF = 4,
      B4_END = 5,
      B4_VALUE = 6,
      BLOCK1 = 7,
      BLOCK2 = 8,
      BLOCK3 = 9,
      BLOCK4_A = 10,
      BLOCK4_B = 11,
      BLOCK5 = 12,
      LBRACE = 13,
      M_COLON = 14,
      M_VALUE = 15,
      RBRACE = 16,
      V_END = 17,
      V_VALUE = 18;

    public final static String orderedTerminalSymbols[] = {
                 "",
                 "IDENTIFIER",
                 "EOF_TOKEN",
                 "B4_COLON",
                 "B4_CRLF",
                 "B4_END",
                 "B4_VALUE",
                 "BLOCK1",
                 "BLOCK2",
                 "BLOCK3",
                 "BLOCK4_A",
                 "BLOCK4_B",
                 "BLOCK5",
                 "LBRACE",
                 "M_COLON",
                 "M_VALUE",
                 "RBRACE",
                 "V_END",
                 "V_VALUE"
             };


    public final static int numTokenKinds = 18;
    public final static boolean isValidForParser = false;
}
