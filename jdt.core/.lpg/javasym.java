public interface javasym {
    public final static int
      TokenNameIdentifier = 1,
      TokenNameabstract = 15,
      TokenNameassert = 68,
      TokenNameboolean = 89,
      TokenNamebreak = 69,
      TokenNamebyte = 90,
      TokenNamecase = 85,
      TokenNamecatch = 113,
      TokenNamechar = 91,
      TokenNameclass = 49,
      TokenNamecontinue = 70,
      TokenNameconst = 133,
      TokenNamedefault = 61,
      TokenNamedo = 71,
      TokenNamedouble = 92,
      TokenNameelse = 116,
      TokenNameenum = 55,
      TokenNameextends = 86,
      TokenNamefalse = 31,
      TokenNamefinal = 16,
      TokenNamefinally = 117,
      TokenNamefloat = 93,
      TokenNamefor = 72,
      TokenNamegoto = 134,
      TokenNameif = 73,
      TokenNameimplements = 128,
      TokenNameimport = 94,
      TokenNameinstanceof = 64,
      TokenNameint = 95,
      TokenNameinterface = 50,
      TokenNamelong = 96,
      TokenNamenative = 17,
      TokenNamenew = 25,
      TokenNamenon-sealed = 18,
      TokenNamenull = 32,
      TokenNamepackage = 97,
      TokenNameprivate = 19,
      TokenNameprotected = 20,
      TokenNamepublic = 21,
      TokenNamereturn = 74,
      TokenNameshort = 98,
      TokenNamestatic = 10,
      TokenNamestrictfp = 22,
      TokenNamesuper = 12,
      TokenNameswitch = 44,
      TokenNamesynchronized = 11,
      TokenNamethis = 13,
      TokenNamethrow = 65,
      TokenNamethrows = 114,
      TokenNametransient = 23,
      TokenNametrue = 33,
      TokenNametry = 75,
      TokenNamevoid = 99,
      TokenNamevolatile = 24,
      TokenNamewhile = 66,
      TokenNamemodule = 118,
      TokenNameopen = 119,
      TokenNamerequires = 120,
      TokenNametransitive = 126,
      TokenNameexports = 121,
      TokenNameopens = 122,
      TokenNameto = 129,
      TokenNameuses = 123,
      TokenNameprovides = 124,
      TokenNamewith = 130,
      TokenNameIntegerLiteral = 34,
      TokenNameLongLiteral = 35,
      TokenNameFloatingPointLiteral = 36,
      TokenNameDoubleLiteral = 37,
      TokenNameCharacterLiteral = 38,
      TokenNameStringLiteral = 39,
      TokenNameTextBlock = 40,
      TokenNamePLUS_PLUS = 26,
      TokenNameMINUS_MINUS = 27,
      TokenNameEQUAL_EQUAL = 80,
      TokenNameLESS_EQUAL = 100,
      TokenNameGREATER_EQUAL = 101,
      TokenNameNOT_EQUAL = 81,
      TokenNameLEFT_SHIFT = 53,
      TokenNameRIGHT_SHIFT = 45,
      TokenNameUNSIGNED_RIGHT_SHIFT = 46,
      TokenNamePLUS_EQUAL = 102,
      TokenNameMINUS_EQUAL = 103,
      TokenNameMULTIPLY_EQUAL = 104,
      TokenNameDIVIDE_EQUAL = 105,
      TokenNameAND_EQUAL = 106,
      TokenNameOR_EQUAL = 107,
      TokenNameXOR_EQUAL = 108,
      TokenNameREMAINDER_EQUAL = 109,
      TokenNameLEFT_SHIFT_EQUAL = 110,
      TokenNameRIGHT_SHIFT_EQUAL = 111,
      TokenNameUNSIGNED_RIGHT_SHIFT_EQUAL = 112,
      TokenNameOR_OR = 87,
      TokenNameAND_AND = 77,
      TokenNamePLUS = 42,
      TokenNameMINUS = 43,
      TokenNameNOT = 51,
      TokenNameREMAINDER = 62,
      TokenNameXOR = 82,
      TokenNameAND = 56,
      TokenNameMULTIPLY = 58,
      TokenNameOR = 78,
      TokenNameTWIDDLE = 52,
      TokenNameDIVIDE = 63,
      TokenNameGREATER = 47,
      TokenNameLESS = 8,
      TokenNameLPAREN = 2,
      TokenNameRPAREN = 5,
      TokenNameLBRACE = 7,
      TokenNameRBRACE = 28,
      TokenNameLBRACKET = 30,
      TokenNameRBRACKET = 83,
      TokenNameSEMICOLON = 3,
      TokenNameQUESTION = 79,
      TokenNameCOLON = 59,
      TokenNameCOMMA = 29,
      TokenNameDOT = 6,
      TokenNameEQUAL = 76,
      TokenNameAT = 9,
      TokenNameELLIPSIS = 115,
      TokenNameARROW = 88,
      TokenNameCOLON_COLON = 48,
      TokenNameBeginLambda = 41,
      TokenNameBeginIntersectionCast = 54,
      TokenNameBeginTypeArguments = 84,
      TokenNameElidedSemicolonAndRightBrace = 131,
      TokenNameAT308 = 4,
      TokenNameAT308DOTDOTDOT = 127,
      TokenNameBeginCaseExpr = 132,
      TokenNameRestrictedIdentifierYield = 67,
      TokenNameRestrictedIdentifierrecord = 57,
      TokenNameRestrictedIdentifiersealed = 14,
      TokenNameRestrictedIdentifierpermits = 125,
      TokenName$eof = 60,
      TokenName$error = 135;

    public final static String orderedTerminalSymbols[] = {
                 "",
                 "Identifier",
                 "LPAREN",
                 "SEMICOLON",
                 "AT308",
                 "RPAREN",
                 "DOT",
                 "LBRACE",
                 "LESS",
                 "AT",
                 "static",
                 "synchronized",
                 "super",
                 "this",
                 "RestrictedIdentifiersealed",
                 "abstract",
                 "final",
                 "native",
                 "non-sealed",
                 "private",
                 "protected",
                 "public",
                 "strictfp",
                 "transient",
                 "volatile",
                 "new",
                 "PLUS_PLUS",
                 "MINUS_MINUS",
                 "RBRACE",
                 "COMMA",
                 "LBRACKET",
                 "false",
                 "null",
                 "true",
                 "IntegerLiteral",
                 "LongLiteral",
                 "FloatingPointLiteral",
                 "DoubleLiteral",
                 "CharacterLiteral",
                 "StringLiteral",
                 "TextBlock",
                 "BeginLambda",
                 "PLUS",
                 "MINUS",
                 "switch",
                 "RIGHT_SHIFT",
                 "UNSIGNED_RIGHT_SHIFT",
                 "GREATER",
                 "COLON_COLON",
                 "class",
                 "interface",
                 "NOT",
                 "TWIDDLE",
                 "LEFT_SHIFT",
                 "BeginIntersectionCast",
                 "enum",
                 "AND",
                 "RestrictedIdentifierrecord",
                 "MULTIPLY",
                 "COLON",
                 "$eof",
                 "default",
                 "REMAINDER",
                 "DIVIDE",
                 "instanceof",
                 "throw",
                 "while",
                 "RestrictedIdentifierYield",
                 "assert",
                 "break",
                 "continue",
                 "do",
                 "for",
                 "if",
                 "return",
                 "try",
                 "EQUAL",
                 "AND_AND",
                 "OR",
                 "QUESTION",
                 "EQUAL_EQUAL",
                 "NOT_EQUAL",
                 "XOR",
                 "RBRACKET",
                 "BeginTypeArguments",
                 "case",
                 "extends",
                 "OR_OR",
                 "ARROW",
                 "boolean",
                 "byte",
                 "char",
                 "double",
                 "float",
                 "import",
                 "int",
                 "long",
                 "package",
                 "short",
                 "void",
                 "LESS_EQUAL",
                 "GREATER_EQUAL",
                 "PLUS_EQUAL",
                 "MINUS_EQUAL",
                 "MULTIPLY_EQUAL",
                 "DIVIDE_EQUAL",
                 "AND_EQUAL",
                 "OR_EQUAL",
                 "XOR_EQUAL",
                 "REMAINDER_EQUAL",
                 "LEFT_SHIFT_EQUAL",
                 "RIGHT_SHIFT_EQUAL",
                 "UNSIGNED_RIGHT_SHIFT_EQUAL",
                 "catch",
                 "throws",
                 "ELLIPSIS",
                 "else",
                 "finally",
                 "module",
                 "open",
                 "requires",
                 "exports",
                 "opens",
                 "uses",
                 "provides",
                 "RestrictedIdentifierpermits",
                 "transitive",
                 "AT308DOTDOTDOT",
                 "implements",
                 "to",
                 "with",
                 "ElidedSemicolonAndRightBrace",
                 "BeginCaseExpr",
                 "const",
                 "goto",
                 "$error"
             };

    public final static int numTokenKinds = orderedTerminalSymbols.length;
    public final static boolean isValidForParser = true;
}
