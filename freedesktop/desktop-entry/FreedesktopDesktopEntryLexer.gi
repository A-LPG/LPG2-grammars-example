-- Desktop Entry lexer — mode simulation of DesktopEntryLexer.g4
-- (HEADER / ENTRY / KEY / VALUE / LOCALE / COUNTRY / ENCODING / MODIFIER)
%Options list
%Options fp=FreedesktopDesktopEntryLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.freedesktop.desktop_entry
%options template=LexerTemplateF.gi

%Headers
    /.
        // Modes aligned with DesktopEntryLexer.g4
        static final int M_ENTRY = 0;
        static final int M_HEADER = 1;
        static final int M_KEY = 2;
        static final int M_VALUE = 3;
        static final int M_LOCALE = 4;
        static final int M_COUNTRY = 5;
        static final int M_ENCODING = 6;
        static final int M_MODIFIER = 7;
        int mode = M_ENTRY;

        void classifyContent()
        {
            int start = getLeftSpan(), end = getRightSpan();
            switch (mode)
            {
                case M_HEADER:
                    makeToken($_GROUP_NAME);
                    break;
                case M_ENTRY:
                    makeToken($_KEY_NAME);
                    mode = M_KEY;
                    break;
                case M_LOCALE:
                    makeToken($_LANGUAGE);
                    break;
                case M_COUNTRY:
                    makeToken($_COUNTRY);
                    break;
                case M_ENCODING:
                    makeToken($_ENCODING);
                    break;
                case M_MODIFIER:
                    makeToken($_MODIFIER);
                    break;
                case M_VALUE:
                {
                    char[] buf = lexStream.getInputChars();
                    int len = end - start + 1;
                    if (len == 4 && buf[start] == 't' && buf[start + 1] == 'r'
                            && buf[start + 2] == 'u' && buf[start + 3] == 'e')
                        makeToken($_TRUE);
                    else if (len == 5 && buf[start] == 'f' && buf[start + 1] == 'a'
                            && buf[start + 2] == 'l' && buf[start + 3] == 's'
                            && buf[start + 4] == 'e')
                        makeToken($_FALSE);
                    else if (isNumberLiteral(buf, start, end))
                        makeToken($_NUMBER);
                    else
                        makeToken($_STRING);
                    break;
                }
                default:
                    makeToken($_KEY_NAME);
                    mode = M_KEY;
                    break;
            }
        }

        boolean isNumberLiteral(char[] buf, int start, int end)
        {
            int i = start;
            boolean sawDigit = false;
            while (i <= end && buf[i] >= '0' && buf[i] <= '9')
            {
                sawDigit = true;
                i++;
            }
            if (!sawDigit)
                return false;
            if (i <= end && buf[i] == '.')
            {
                i++;
                boolean frac = false;
                while (i <= end && buf[i] >= '0' && buf[i] <= '9')
                {
                    frac = true;
                    i++;
                }
                if (!frac)
                    return false;
            }
            return i > end;
        }
    ./
%End

%Include
    LexerVeryBasicMapF.gi
%End

%Export
    LEFT_BRACKET RIGHT_BRACKET EQUAL SEMICOLON
    GROUP_NAME KEY_NAME STRING NUMBER TRUE FALSE
    LANGUAGE COUNTRY ENCODING MODIFIER
    UNDERSCORE DOT AT
%End

%Terminals
    CtlCharNotWS
    LF CR HT FF
    a b c d e f g h i j k l m n o p q r s t u v w x y z _
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
    0 1 2 3 4 5 6 7 8 9
    AfterASCII ::= '\u0080..\ufffe'
    Space ::= ' '
    LF ::= NewLine
    CR ::= Return
    HT ::= HorizontalTab
    FF ::= FormFeed
    DoubleQuote ::= '"'
    Sharp ::= '#'
    Percent ::= '%'
    Equal ::= '='
    SemiColon ::= ';'
    LeftBracket ::= '['
    RightBracket ::= ']'
    Dot ::= '.'
    AtSign ::= '@'
    Colon ::= ':'
    Slash ::= '/'
    Plus ::= '+'
    Minus ::= '-'
    Exclamation ::= '!'
    DollarSign ::= '$'
    Ampersand ::= '&'
    SingleQuote ::= "'"
    LeftParen ::= '('
    RightParen ::= ')'
    Star ::= '*'
    Comma ::= ','
    LessThan ::= '<'
    GreaterThan ::= '>'
    QuestionMark ::= '?'
    BackSlash ::= '\'
    Caret ::= '^'
    Tilde ::= '~'
    BackQuote ::= '`'
    LeftBrace ::= '{'
    RightBrace ::= '}'
    VerticalBar ::= '|'
%End

%Start
    Token
%End

%Rules
    Token ::= HashComment /. skipToken(); ./
            | EolTok /. { skipToken(); if (mode == M_VALUE) mode = M_ENTRY; } ./
            | SpaceTab /. skipToken(); ./
            | LeftBracket /. {
                  makeToken($_LEFT_BRACKET);
                  if (mode == M_KEY) mode = M_LOCALE;
                  else mode = M_HEADER;
              } ./
            | RightBracket /. {
                  makeToken($_RIGHT_BRACKET);
                  if (mode == M_HEADER) mode = M_ENTRY;
                  else mode = M_KEY;
              } ./
            | Equal /. { makeToken($_EQUAL); mode = M_VALUE; } ./
            | SemiColon /. makeToken($_SEMICOLON); ./
            | _ /. { makeToken($_UNDERSCORE); mode = M_COUNTRY; } ./
            | Dot /. { makeToken($_DOT); mode = M_ENCODING; } ./
            | AtSign /. { makeToken($_AT); mode = M_MODIFIER; } ./
            | ContentTok /. classifyContent(); ./

    HashComment ::= Sharp NotNlBody
    NotNlBody -> %Empty | NotNlBody NotNlChar
    NotNlChar -> Letter | Digit | Space | HT | Equal | Dot | AtSign | Minus
               | Colon | Slash | _ | AfterASCII

    EolTok ::= CR LF | LF | CR
    SpaceTab -> Space | HT

    -- One content rule (mode classifies). Dot stays in the tail so values like
    -- URLs / versions remain one STRING; '_' and '@' are token-start locale ops
    -- only (not in the tail) so en_US and sr@latin split correctly.
    ContentTok ::= ContentStart ContentTail
    ContentStart -> Letter | Digit | AfterASCII
    ContentTail -> %Empty | ContentTail ContentTailChar
    ContentTailChar -> Letter | Digit | Minus | Space | Colon | Slash | Plus
                     | Dot | Percent | AfterASCII

    Letter -> Lower | Upper
    Lower -> a | b | c | d | e | f | g | h | i | j | k | l | m
           | n | o | p | q | r | s | t | u | v | w | x | y | z
    Upper -> A | B | C | D | E | F | G | H | I | J | K | L | M
           | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
%End
