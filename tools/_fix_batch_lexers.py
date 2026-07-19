#!/usr/bin/env python3
"""One-off lexer/example fixes for grammar harness batch."""
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

GQL_REPL = {
    "makeToken($_LPAREN)": "makeToken($_LEFT_PAREN)",
    "makeToken($_RPAREN)": "makeToken($_RIGHT_PAREN)",
    "makeToken($_LBRACE)": "makeToken($_LEFT_BRACE)",
    "makeToken($_RBRACE)": "makeToken($_RIGHT_BRACE)",
    "makeToken($_LBRACKET)": "makeToken($_LEFT_BRACKET)",
    "makeToken($_RBRACKET)": "makeToken($_RIGHT_BRACKET)",
    "makeToken($_EQ)": "makeToken($_EQUALS_OPERATOR)",
    "makeToken($_DOT)": "makeToken($_PERIOD)",
    "identifier /. checkForKeyWord(); ./": "identifier /. checkForKeyWord($_REGULAR_IDENTIFIER); ./",
}

DART2_REPL = {
    "makeToken($_LPAREN)": "makeToken($_OP)",
    "makeToken($_RPAREN)": "makeToken($_CP)",
    "makeToken($_LBRACE)": "makeToken($_OBC)",
    "makeToken($_RBRACE)": "makeToken($_CBC)",
    "makeToken($_LBRACKET)": "makeToken($_OB)",
    "makeToken($_RBRACKET)": "makeToken($_CB)",
    "makeToken($_SEMI)": "makeToken($_SC)",
    "makeToken($_COMMA)": "makeToken($_C)",
    "makeToken($_COLON)": "makeToken($_CO)",
    "makeToken($_PLUS)": "makeToken($_PL)",
    "makeToken($_STAR)": "makeToken($_ST)",
    "makeToken($_FATARROW)": "makeToken($_EG)",
    "makeToken($_DOT)": "makeToken($_D)",
    "makeToken($_STRING)": "makeToken($_SingleLineString)",
}


def patch_file(path: Path, repl: dict) -> None:
    text = path.read_text()
    for old, new in repl.items():
        text = text.replace(old, new)
    path.write_text(text)


GRAPHSTREAM_LEXER = """-- DGS lexer aligned to DGSLexer.g4 / GraphstreamDgsParser
%Options list
%Options fp=GraphstreamDgsLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.graphstream_dgs
%options template=LexerTemplateF.gi
%options filter=GraphstreamDgsKWLexer.gi

%Define
    $kw_lexer_class /.$GraphstreamDgsKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AE AN CE CG CL CN DE DN ST
    MAGIC EOL INT REAL WORD STRING COMMENT
    PLUS MINUS COMMA LBRACE RBRACE LBRACK RBRACK
    DOT LANGLE RANGLE EQUALS COLON
%End

%Terminals
    CtlCharNotWS
    LF CR HT FF
    a b c d e f g h i j k l m n o p q r s t u v w x y z _
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
    0 1 2 3 4 5 6 7 8 9
    AfterASCII ::= '\\u0080..\\ufffe'
    Space ::= ' '
    LF ::= NewLine
    CR ::= Return
    HT ::= HorizontalTab
    DoubleQuote ::= '"'
    SingleQuote ::= "'"
    Sharp ::= '#'
    Plus ::= '+'
    Minus ::= '-'
    Comma ::= ','
    LeftBrace ::= '{'
    RightBrace ::= '}'
    LeftBracket ::= '['
    RightBracket ::= ']'
    Dot ::= '.'
    LessThan ::= '<'
    GreaterThan ::= '>'
    Equal ::= '='
    Colon ::= ':'
%End

%Start
    Token
%End

%Rules
    Token ::= MagicTok /. makeToken($_MAGIC); ./
            | EolTok /. makeToken($_EOL); ./
            | CommentTok /. makeToken($_COMMENT); ./
            | RealTok /. makeToken($_REAL); ./
            | IntTok /. makeToken($_INT); ./
            | DqString /. makeToken($_STRING); ./
            | SqString /. makeToken($_STRING); ./
            | ColorTok /. makeToken($_WORD); ./
            | identifier /. checkForKeyWord($_WORD); ./
            | SpaceTab /. skipToken(); ./
            | Plus /. makeToken($_PLUS); ./
            | Minus /. makeToken($_MINUS); ./
            | Comma /. makeToken($_COMMA); ./
            | LeftBrace /. makeToken($_LBRACE); ./
            | RightBrace /. makeToken($_RBRACE); ./
            | LeftBracket /. makeToken($_LBRACK); ./
            | RightBracket /. makeToken($_RBRACK); ./
            | Dot /. makeToken($_DOT); ./
            | LessThan /. makeToken($_LANGLE); ./
            | GreaterThan /. makeToken($_RANGLE); ./
            | Equal /. makeToken($_EQUALS); ./
            | Colon /. makeToken($_COLON); ./

    MagicTok ::= 'D' 'G' 'S' '0' '0' '4'
               | 'D' 'G' 'S' '0' '0' '3'

    EolTok ::= CR LF | LF | CR

    CommentTok ::= Sharp NotEolStar EolTok
    NotEolStar -> $empty | NotEolStar NotEolChar
    NotEolChar -> Letter | Digit | Space | HT | Plus | Minus | Comma | Dot |
                  Equal | Colon | LeftBrace | RightBrace | LeftBracket | RightBracket |
                  LessThan | GreaterThan | DoubleQuote | SingleQuote | AfterASCII

    RealTok ::= OptSign IntPart Dot DigitStar OptExp
               | OptSign Dot DigitStar OptExp
    OptSign -> $empty | Plus | Minus
    IntPart -> Digit | NonZero DigitStar
    NonZero -> 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    DigitStar -> $empty | DigitStar Digit
    OptExp -> $empty | e ESign DigitStar
    e -> E | e
    ESign -> $empty | Plus | Minus

    IntTok ::= OptSign IntPart

    DqString ::= DoubleQuote DqBody DoubleQuote
    DqBody -> $empty | DqBody DqChar
    DqChar -> NotDQ | EscapeDQ
    NotDQ -> Letter | Digit | Space | HT | Plus | Minus | Comma | Dot | Equal | Colon |
             LeftBrace | RightBrace | LeftBracket | RightBracket | LessThan | GreaterThan | AfterASCII
    EscapeDQ ::= BackSlash DoubleQuote | BackSlash BackSlash
    BackSlash ::= '\\'

    SqString ::= SingleQuote SqBody SingleQuote
    SqBody -> $empty | SqBody SqChar
    SqChar -> NotSQ | EscapeSQ
    NotSQ -> Letter | Digit | Space | HT | Plus | Minus | Comma | Dot | Equal | Colon |
             LeftBrace | RightBrace | LeftBracket | RightBracket | LessThan | GreaterThan | AfterASCII
    EscapeSQ ::= BackSlash SingleQuote | BackSlash BackSlash

    ColorTok ::= Sharp HexByte HexByte HexByte OptHexByte
    HexByte -> HexDigit HexDigit
    OptHexByte -> $empty | HexDigit HexDigit
    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F

    identifier -> WordStart WordRest
    WordStart -> LowerCaseLetter | UpperCaseLetter
    WordRest -> $empty | WordRest WordChar
    WordChar -> LowerCaseLetter | UpperCaseLetter | Digit | Minus | Underscore
    Underscore -> _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    Letter -> LowerCaseLetter | UpperCaseLetter
    SpaceTab -> Space | HT
%End
"""

GRAPHSTREAM_KW = """-- Event keywords only (DGSLexer.g4)
%options package=lpg.grammars.graphstream_dgs
%options template=KeywordTemplateF.gi
%options fp=GraphstreamDgsKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AE AN CE CG CL CN DE DN ST
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a e /.$setResult($_AE);./
    Keyword ::= a n /.$setResult($_AN);./
    Keyword ::= c e /.$setResult($_CE);./
    Keyword ::= c g /.$setResult($_CG);./
    Keyword ::= c l /.$setResult($_CL);./
    Keyword ::= c n /.$setResult($_CN);./
    Keyword ::= d e /.$setResult($_DE);./
    Keyword ::= d n /.$setResult($_DN);./
    Keyword ::= s t /.$setResult($_ST);./
%End
"""

DESKTOP_LEXER = """-- Desktop Entry lexer (subset of DesktopEntryLexer.g4)
%Options list
%Options fp=FreedesktopDesktopEntryLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.freedesktop.desktop_entry
%options template=LexerTemplateF.gi
%options filter=FreedesktopDesktopEntryKWLexer.gi

%Define
    $kw_lexer_class /.$FreedesktopDesktopEntryKWLexer./
%End

%Globals
    /.
    boolean pendingGroupName = false;
    ./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    LEFT_BRACKET RIGHT_BRACKET EQUAL SEMICOLON
    GROUP_NAME KEY_NAME STRING NUMBER TRUE FALSE
    LANGUAGE COUNTRY ENCODING MODIFIER UNDERSCORE
%End

%Terminals
    LF CR HT FF
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
    0 1 2 3 4 5 6 7 8 9
    AfterASCII ::= '\\u0080..\\ufffe'
    Space ::= ' '
    LF ::= NewLine
    CR ::= Return
    HT ::= HorizontalTab
    Sharp ::= '#'
    Equal ::= '='
    SemiColon ::= ';'
    LeftBracket ::= '['
    RightBracket ::= ']'
    Dot ::= '.'
    AtSign ::= '@'
    UnderscoreT ::= '_'
%End

%Start
    Token
%End

%Rules
    Token ::= HashComment /. skipToken(); ./
            | EolTok /. skipToken(); ./
            | SpaceTab /. skipToken(); ./
            | LeftBracket /. { makeToken($_LEFT_BRACKET); pendingGroupName = true; } ./
            | GroupNameTok /. { makeToken($_GROUP_NAME); pendingGroupName = false; } ./
            | RightBracket /. makeToken($_RIGHT_BRACKET); ./
            | KeyNameTok /. makeToken($_KEY_NAME); ./
            | Equal /. makeToken($_EQUAL); ./
            | TrueTok /. makeToken($_TRUE); ./
            | FalseTok /. makeToken($_FALSE); ./
            | NumberTok /. makeToken($_NUMBER); ./
            | ValueTok /. makeToken($_STRING); ./
            | SemiColon /. makeToken($_SEMICOLON); ./
            | UnderscoreT /. makeToken($_UNDERSCORE); ./

    HashComment ::= Sharp NotNlBody
    NotNlBody -> $empty | NotNlBody NotNlChar
    NotNlChar -> Letter | Digit | Space | HT | Equal | Dot | AtSign | AfterASCII
    EolTok ::= CR LF | LF | CR
    SpaceTab -> Space | HT

    GroupNameTok ::= GroupNameChars
    GroupNameChars -> GroupNameChar | GroupNameChars GroupNameChar
    GroupNameChar -> Letter | Digit | Space | Dot | Minus | UnderscoreT | AfterASCII
    Minus -> '-'

    KeyNameTok ::= KeyStart KeyTail
    KeyStart -> Lower | Upper
    KeyTail -> $empty | KeyTail KeyTailChar
    KeyTailChar -> Lower | Upper | Digit | Minus

    TrueTok ::= t r u e
    FalseTok ::= f a l s e

    NumberTok ::= DigitSeq OptFrac
    OptFrac -> $empty | Dot DigitSeq
    DigitSeq -> Digit | DigitSeq Digit

    ValueTok ::= ValueChar | ValueTok ValueChar
    ValueChar -> Letter | Digit | Colon | Slash | Dot | Minus | Plus | AtSign | AfterASCII
    Colon -> ':'
    Slash -> '/'
    Plus -> '+'

    Lower -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z
    Upper -> A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Letter -> Lower | Upper
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    t -> t | T
    r -> r | R
    u -> u | U
    e -> e | E
    f -> f | F
    a -> a | A
    s -> s | S
%End
"""

DESKTOP_KW = """%options package=lpg.grammars.freedesktop.desktop_entry
%options template=KeywordTemplateF.gi
%options fp=FreedesktopDesktopEntryKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    TRUE FALSE Type Name URL
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
%End
"""

EDIF_SMOKE = """(edif smoke
  (edifVersion 3 0 0)
  (edifHeader
    (edifLevel 1)
    (keywordMap (k0KeywordLevel))
    (status (comment "smoke"))))
"""

EDIF_CELL = """(edif cell1
  (edifVersion 2 0 0)
  (edifHeader (edifLevel 0) (keywordMap (k0KeywordLevel)))
  (library LIB
    (libraryHeader (edifLevel 0))
    (cell CELL (cellHeader))))
"""

EDIF_NET = """(edif net1
  (edifVersion 2 0 0)
  (edifHeader (edifLevel 0) (keywordMap (k0KeywordLevel)))
  (library LIB (libraryHeader (edifLevel 0)) (comment "net placeholder")))
"""

GQL_QUERY = """MATCH (n)
RETURN n
"""

GQL_INSERT = """INSERT (n:Person {name: 'Alice', age: 30})
"""

GQL_SET = """MATCH (n) SET n.name = "Mario Rossi"
"""


def main() -> None:
    patch_file(ROOT / "gql/GqlLexer.gi", GQL_REPL)
    patch_file(ROOT / "dart2/Dart2Lexer.gi", DART2_REPL)

    (ROOT / "graphstream-dgs/GraphstreamDgsLexer.gi").write_text(GRAPHSTREAM_LEXER)
    (ROOT / "graphstream-dgs/GraphstreamDgsKWLexer.gi").write_text(GRAPHSTREAM_KW)

    (ROOT / "freedesktop/desktop-entry/FreedesktopDesktopEntryLexer.gi").write_text(DESKTOP_LEXER)
    (ROOT / "freedesktop/desktop-entry/FreedesktopDesktopEntryKWLexer.gi").write_text(DESKTOP_KW)

    (ROOT / "edif300/examples-curated/smoke.edif").write_text(EDIF_SMOKE)
    (ROOT / "edif300/examples-curated/cell.edif").write_text(EDIF_CELL)
    (ROOT / "edif300/examples-curated/net.edif").write_text(EDIF_NET)

    gql_dir = ROOT / "gql/examples-curated"
    (gql_dir / "smoke.gql").write_text(GQL_QUERY)
    (gql_dir / "insert.gql").write_text(GQL_INSERT)
    (gql_dir / "set.gql").write_text(GQL_SET)

    print("patched gql, dart2, graphstream-dgs, desktop-entry, edif300, gql examples")


if __name__ == "__main__":
    main()
