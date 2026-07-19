package lpg.grammars.erlang;


    //#line 123 "LexerTemplateF.gi
import lpg.runtime.*;

    //#line 128 "LexerTemplateF.gi

public class ErlangLexer extends Object implements RuleAction
{
    private ErlangLexerLpgLexStream lexStream;
    
    private static ParseTable prs = new ErlangLexerprs();
    public ParseTable getParseTable() { return prs; }

    private LexParser lexParser = new LexParser();
    public LexParser getParser() { return lexParser; }

    public int getToken(int i) { return lexParser.getToken(i); }
    public int getRhsFirstTokenIndex(int i) { return lexParser.getFirstToken(i); }
    public int getRhsLastTokenIndex(int i) { return lexParser.getLastToken(i); }

    public int getLeftSpan() { return lexParser.getToken(1); }
    public int getRightSpan() { return lexParser.getLastToken(); }

    public void resetKeywordLexer()
    {
        if (kwLexer == null)
              this.kwLexer = new NoKWLexer(lexStream.getInputChars(), 0);
        else this.kwLexer.setInputChars(lexStream.getInputChars());
    }

    public void reset(String filename, int tab) throws java.io.IOException
    {
        lexStream = new ErlangLexerLpgLexStream(filename, tab);
        lexParser.reset((ILexStream) lexStream, prs, (RuleAction) this);
        resetKeywordLexer();
    }

    public void reset(char[] input_chars, String filename)
    {
        reset(input_chars, filename, 1);
    }
    
    public void reset(char[] input_chars, String filename, int tab)
    {
        lexStream = new ErlangLexerLpgLexStream(input_chars, filename, tab);
        lexParser.reset((ILexStream) lexStream, prs, (RuleAction) this);
        resetKeywordLexer();
    }
    
    public ErlangLexer(String filename, int tab) throws java.io.IOException 
    {
        reset(filename, tab);
    }

    public ErlangLexer(char[] input_chars, String filename, int tab)
    {
        reset(input_chars, filename, tab);
    }

    public ErlangLexer(char[] input_chars, String filename)
    {
        reset(input_chars, filename, 1);
    }

    public ErlangLexer() {}

    public ILexStream getILexStream() { return lexStream; }

    /**
     * @deprecated replaced by {@link #getILexStream()}
     */
    public ILexStream getLexStream() { return lexStream; }

    private void initializeLexer(IPrsStream prsStream, int start_offset, int end_offset)
    {
        if (lexStream.getInputChars() == null)
            throw new NullPointerException("LexStream was not initialized");
        lexStream.setPrsStream(prsStream);
        prsStream.makeToken(start_offset, end_offset, 0); // Token list must start with a bad token
    }

    private void addEOF(IPrsStream prsStream, int end_offset)
    {
        prsStream.makeToken(end_offset, end_offset, ErlangLexerexp.EOF_TOKEN); // and end with the end of file token
        prsStream.setStreamLength(prsStream.getSize());
    }

    public void lexer(IPrsStream prsStream)
    {
        lexer(null, prsStream);
    }
    
    public void lexer(Monitor monitor, IPrsStream prsStream)
    {
        initializeLexer(prsStream, 0, -1);
        lexParser.parseCharacters(monitor);  // Lex the input characters
        addEOF(prsStream, lexStream.getStreamIndex());
    }

    public void lexer(IPrsStream prsStream, int start_offset, int end_offset)
    {
        lexer(null, prsStream, start_offset, end_offset);
    }
    
    public void lexer(Monitor monitor, IPrsStream prsStream, int start_offset, int end_offset)
    {
        if (start_offset <= 1)
             initializeLexer(prsStream, 0, -1);
        else initializeLexer(prsStream, start_offset - 1, start_offset - 1);

        lexParser.parseCharacters(monitor, start_offset, end_offset);

        addEOF(prsStream, (end_offset >= lexStream.getStreamIndex() ? lexStream.getStreamIndex() : end_offset + 1));
    }

    /**
     * If a parse stream was not passed to this Lexical analyser then we
     * simply report a lexical error. Otherwise, we produce a bad token.
     */
    public void reportLexicalError(int startLoc, int endLoc) {
        IPrsStream prs_stream = lexStream.getIPrsStream();
        if (prs_stream == null)
            lexStream.reportLexicalError(startLoc, endLoc);
        else {
            //
            // Remove any token that may have been processed that fall in the
            // range of the lexical error... then add one error token that spans
            // the error range.
            //
            for (int i = prs_stream.getSize() - 1; i > 0; i--) {
                if (prs_stream.getStartOffset(i) >= startLoc)
                     prs_stream.removeLastToken();
                else break;
            }
            prs_stream.makeToken(startLoc, endLoc, 0); // add an error token to the prsStream
        }        
    }

    //#line 9 "LexerVeryBasicMapF.gi

    static public class NoKWLexer
    {
        public int[] getKeywordKinds() { return null; }

        public int lexer(int curtok, int lasttok) { return 0; }

        public void setInputChars(char[] inputChars) { }

        final int getKind(int c) { return 0; }

        public NoKWLexer(char[] inputChars, int identifierKind) { }
    }

    //#line 5 "LexerBasicMapF.gi

    //
    // The Lexer contains an array of characters as the input stream to be parsed.
    // There are methods to retrieve and classify characters.
    // The lexparser "token" is implemented simply as the index of the next character in the array.
    // The Lexer extends the abstract class LpgLexStream with an implementation of the abstract
    // method getKind.  The template defines the Lexer class and the lexer() method.
    // A driver creates the action class, "Lexer", passing an Option object to the constructor.
    //
    NoKWLexer kwLexer;
    boolean printTokens;
    private final static int ECLIPSE_TAB_VALUE = 4;

    public int [] getKeywordKinds() { return kwLexer.getKeywordKinds(); }

    public ErlangLexer(String filename) throws java.io.IOException
    {
        this(filename, ECLIPSE_TAB_VALUE);
        this.kwLexer = new NoKWLexer(lexStream.getInputChars(), 0);
    }

    /**
     * @deprecated function replaced by {@link #reset(char [] content, String filename)}
     */
    public void initialize(char [] content, String filename)
    {
        reset(content, filename);
    }
    
    final void makeToken(int left_token, int right_token, int kind)
    {
        lexStream.makeToken(left_token, right_token, kind);
    }
    
    final void makeToken(int kind)
    {
        int startOffset = getLeftSpan(),
            endOffset = getRightSpan();
        lexStream.makeToken(startOffset, endOffset, kind);
        if (printTokens) printValue(startOffset, endOffset);
    }

    final void makeComment(int kind)
    {
        int startOffset = getLeftSpan(),
            endOffset = getRightSpan();
        lexStream.getIPrsStream().makeAdjunct(startOffset, endOffset, kind);
    }

    final void skipToken()
    {
        if (printTokens) printValue(getLeftSpan(), getRightSpan());
    }
    
    final void checkForKeyWord()
    {
        int startOffset = getLeftSpan(),
            endOffset = getRightSpan(),
            kwKind = kwLexer.lexer(startOffset, endOffset);
        lexStream.makeToken(startOffset, endOffset, kwKind);
        if (printTokens) printValue(startOffset, endOffset);
    }
    
    //
    // This flavor of checkForKeyWord is necessary when the default kind
    // (which is returned when the keyword filter doesn't match) is something
    // other than _IDENTIFIER.
    //
    final void checkForKeyWord(int defaultKind)
    {
        int startOffset = getLeftSpan(),
            endOffset = getRightSpan(),
            kwKind = kwLexer.lexer(startOffset, endOffset);
        if (kwKind == 0)
            kwKind = defaultKind;
        lexStream.makeToken(startOffset, endOffset, kwKind);
        if (printTokens) printValue(startOffset, endOffset);
    }
    
    final void printValue(int startOffset, int endOffset)
    {
        String s = new String(lexStream.getInputChars(), startOffset, endOffset - startOffset + 1);
        System.out.print(s);
    }

    //
    //
    //
    static class ErlangLexerLpgLexStream extends LpgLexStream
    {
    public final static int tokenKind[] =
    {
        ErlangLexersym.Char_CtlCharNotWS,    // 000    0x00
        ErlangLexersym.Char_CtlCharNotWS,    // 001    0x01
        ErlangLexersym.Char_CtlCharNotWS,    // 002    0x02
        ErlangLexersym.Char_CtlCharNotWS,    // 003    0x03
        ErlangLexersym.Char_CtlCharNotWS,    // 004    0x04
        ErlangLexersym.Char_CtlCharNotWS,    // 005    0x05
        ErlangLexersym.Char_CtlCharNotWS,    // 006    0x06
        ErlangLexersym.Char_CtlCharNotWS,    // 007    0x07
        ErlangLexersym.Char_CtlCharNotWS,    // 008    0x08
        ErlangLexersym.Char_HT,              // 009    0x09
        ErlangLexersym.Char_LF,              // 010    0x0A
        ErlangLexersym.Char_CtlCharNotWS,    // 011    0x0B
        ErlangLexersym.Char_FF,              // 012    0x0C
        ErlangLexersym.Char_CR,              // 013    0x0D
        ErlangLexersym.Char_CtlCharNotWS,    // 014    0x0E
        ErlangLexersym.Char_CtlCharNotWS,    // 015    0x0F
        ErlangLexersym.Char_CtlCharNotWS,    // 016    0x10
        ErlangLexersym.Char_CtlCharNotWS,    // 017    0x11
        ErlangLexersym.Char_CtlCharNotWS,    // 018    0x12
        ErlangLexersym.Char_CtlCharNotWS,    // 019    0x13
        ErlangLexersym.Char_CtlCharNotWS,    // 020    0x14
        ErlangLexersym.Char_CtlCharNotWS,    // 021    0x15
        ErlangLexersym.Char_CtlCharNotWS,    // 022    0x16
        ErlangLexersym.Char_CtlCharNotWS,    // 023    0x17
        ErlangLexersym.Char_CtlCharNotWS,    // 024    0x18
        ErlangLexersym.Char_CtlCharNotWS,    // 025    0x19
        ErlangLexersym.Char_CtlCharNotWS,    // 026    0x1A
        ErlangLexersym.Char_CtlCharNotWS,    // 027    0x1B
        ErlangLexersym.Char_CtlCharNotWS,    // 028    0x1C
        ErlangLexersym.Char_CtlCharNotWS,    // 029    0x1D
        ErlangLexersym.Char_CtlCharNotWS,    // 030    0x1E
        ErlangLexersym.Char_CtlCharNotWS,    // 031    0x1F
        ErlangLexersym.Char_Space,           // 032    0x20
        ErlangLexersym.Char_Exclamation,     // 033    0x21
        ErlangLexersym.Char_DoubleQuote,     // 034    0x22
        ErlangLexersym.Char_Sharp,           // 035    0x23
        ErlangLexersym.Char_DollarSign,      // 036    0x24
        ErlangLexersym.Char_Percent,         // 037    0x25
        ErlangLexersym.Char_Ampersand,       // 038    0x26
        ErlangLexersym.Char_SingleQuote,     // 039    0x27
        ErlangLexersym.Char_LeftParen,       // 040    0x28
        ErlangLexersym.Char_RightParen,      // 041    0x29
        ErlangLexersym.Char_Star,            // 042    0x2A
        ErlangLexersym.Char_Plus,            // 043    0x2B
        ErlangLexersym.Char_Comma,           // 044    0x2C
        ErlangLexersym.Char_Minus,           // 045    0x2D
        ErlangLexersym.Char_Dot,             // 046    0x2E
        ErlangLexersym.Char_Slash,           // 047    0x2F
        ErlangLexersym.Char_0,               // 048    0x30
        ErlangLexersym.Char_1,               // 049    0x31
        ErlangLexersym.Char_2,               // 050    0x32
        ErlangLexersym.Char_3,               // 051    0x33
        ErlangLexersym.Char_4,               // 052    0x34
        ErlangLexersym.Char_5,               // 053    0x35
        ErlangLexersym.Char_6,               // 054    0x36
        ErlangLexersym.Char_7,               // 055    0x37
        ErlangLexersym.Char_8,               // 056    0x38
        ErlangLexersym.Char_9,               // 057    0x39
        ErlangLexersym.Char_Colon,           // 058    0x3A
        ErlangLexersym.Char_SemiColon,       // 059    0x3B
        ErlangLexersym.Char_LessThan,        // 060    0x3C
        ErlangLexersym.Char_Equal,           // 061    0x3D
        ErlangLexersym.Char_GreaterThan,     // 062    0x3E
        ErlangLexersym.Char_QuestionMark,    // 063    0x3F
        ErlangLexersym.Char_AtSign,          // 064    0x40
        ErlangLexersym.Char_A,               // 065    0x41
        ErlangLexersym.Char_B,               // 066    0x42
        ErlangLexersym.Char_C,               // 067    0x43
        ErlangLexersym.Char_D,               // 068    0x44
        ErlangLexersym.Char_E,               // 069    0x45
        ErlangLexersym.Char_F,               // 070    0x46
        ErlangLexersym.Char_G,               // 071    0x47
        ErlangLexersym.Char_H,               // 072    0x48
        ErlangLexersym.Char_I,               // 073    0x49
        ErlangLexersym.Char_J,               // 074    0x4A
        ErlangLexersym.Char_K,               // 075    0x4B
        ErlangLexersym.Char_L,               // 076    0x4C
        ErlangLexersym.Char_M,               // 077    0x4D
        ErlangLexersym.Char_N,               // 078    0x4E
        ErlangLexersym.Char_O,               // 079    0x4F
        ErlangLexersym.Char_P,               // 080    0x50
        ErlangLexersym.Char_Q,               // 081    0x51
        ErlangLexersym.Char_R,               // 082    0x52
        ErlangLexersym.Char_S,               // 083    0x53
        ErlangLexersym.Char_T,               // 084    0x54
        ErlangLexersym.Char_U,               // 085    0x55
        ErlangLexersym.Char_V,               // 086    0x56
        ErlangLexersym.Char_W,               // 087    0x57
        ErlangLexersym.Char_X,               // 088    0x58
        ErlangLexersym.Char_Y,               // 089    0x59
        ErlangLexersym.Char_Z,               // 090    0x5A
        ErlangLexersym.Char_LeftBracket,     // 091    0x5B
        ErlangLexersym.Char_BackSlash,       // 092    0x5C
        ErlangLexersym.Char_RightBracket,    // 093    0x5D
        ErlangLexersym.Char_Caret,           // 094    0x5E
        ErlangLexersym.Char__,               // 095    0x5F
        ErlangLexersym.Char_BackQuote,       // 096    0x60
        ErlangLexersym.Char_a,               // 097    0x61
        ErlangLexersym.Char_b,               // 098    0x62
        ErlangLexersym.Char_c,               // 099    0x63
        ErlangLexersym.Char_d,               // 100    0x64
        ErlangLexersym.Char_e,               // 101    0x65
        ErlangLexersym.Char_f,               // 102    0x66
        ErlangLexersym.Char_g,               // 103    0x67
        ErlangLexersym.Char_h,               // 104    0x68
        ErlangLexersym.Char_i,               // 105    0x69
        ErlangLexersym.Char_j,               // 106    0x6A
        ErlangLexersym.Char_k,               // 107    0x6B
        ErlangLexersym.Char_l,               // 108    0x6C
        ErlangLexersym.Char_m,               // 109    0x6D
        ErlangLexersym.Char_n,               // 110    0x6E
        ErlangLexersym.Char_o,               // 111    0x6F
        ErlangLexersym.Char_p,               // 112    0x70
        ErlangLexersym.Char_q,               // 113    0x71
        ErlangLexersym.Char_r,               // 114    0x72
        ErlangLexersym.Char_s,               // 115    0x73
        ErlangLexersym.Char_t,               // 116    0x74
        ErlangLexersym.Char_u,               // 117    0x75
        ErlangLexersym.Char_v,               // 118    0x76
        ErlangLexersym.Char_w,               // 119    0x77
        ErlangLexersym.Char_x,               // 120    0x78
        ErlangLexersym.Char_y,               // 121    0x79
        ErlangLexersym.Char_z,               // 122    0x7A
        ErlangLexersym.Char_LeftBrace,       // 123    0x7B
        ErlangLexersym.Char_VerticalBar,     // 124    0x7C
        ErlangLexersym.Char_RightBrace,      // 125    0x7D
        ErlangLexersym.Char_Tilde,           // 126    0x7E

        ErlangLexersym.Char_AfterASCII,      // for all chars in range 128..65534
        ErlangLexersym.Char_EOF              // for '\uffff' or 65535 
    };
            
    public final int getKind(int i)  // Classify character at ith location
    {
        int c = (i >= getStreamLength() ? '\uffff' : getCharValue(i));
        return (c < 128 // ASCII Character
                  ? tokenKind[c]
                  : c == '\uffff'
                       ? ErlangLexersym.Char_EOF
                       : ErlangLexersym.Char_AfterASCII);
    }

    public String[] orderedExportedSymbols() { return ErlangLexerexp.orderedTerminalSymbols; }

    public ErlangLexerLpgLexStream(String filename, int tab) throws java.io.IOException
    {
        super(filename, tab);
    }

    public ErlangLexerLpgLexStream(char[] input_chars, String filename, int tab)
    {
        super(input_chars, filename, tab);
    }

    public ErlangLexerLpgLexStream(char[] input_chars, String filename)
    {
        super(input_chars, filename, 1);
    }
    }

    //#line 264 "LexerTemplateF.gi

    public void ruleAction(int ruleNumber)
    {
        switch(ruleNumber)
        {

            //
            // Rule 1:  Token ::= Comment
            //
            case 1: { 
             skipToken(); 
            break;
            }
            //
            // Rule 2:  Token ::= white
            //
            case 2: { 
             skipToken(); 
            break;
            }
            //
            // Rule 3:  Token ::= AttrSpec
            //
            case 3: { 
             makeToken(ErlangLexerexp.AttrName); 
            break;
            }
            //
            // Rule 4:  Token ::= tokString
            //
            case 4: { 
             makeToken(ErlangLexerexp.tokString); 
            break;
            }
            //
            // Rule 5:  Token ::= tokChar
            //
            case 5: { 
             makeToken(ErlangLexerexp.tokChar); 
            break;
            }
            //
            // Rule 6:  Token ::= tokFloat
            //
            case 6: { 
             makeToken(ErlangLexerexp.tokFloat); 
            break;
            }
            //
            // Rule 7:  Token ::= tokInteger
            //
            case 7: { 
             makeToken(ErlangLexerexp.tokInteger); 
            break;
            }
            //
            // Rule 8:  Token ::= tokVarRule
            //
            case 8: { 
             makeToken(ErlangLexerexp.tokVar); 
            break;
            }
            //
            // Rule 9:  Token ::= a n d a l s o
            //
            case 9: { 
             makeToken($_ANDALSO_); 
            break;
            }
            //
            // Rule 10:  Token ::= o r e l s e
            //
            case 10: { 
             makeToken($_ORELSE_); 
            break;
            }
            //
            // Rule 11:  Token ::= r e c e i v e
            //
            case 11: { 
             makeToken($_RECEIVE_); 
            break;
            }
            //
            // Rule 12:  Token ::= b e g i n
            //
            case 12: { 
             makeToken($_BEGIN_); 
            break;
            }
            //
            // Rule 13:  Token ::= c a t c h
            //
            case 13: { 
             makeToken($_CATCH_); 
            break;
            }
            //
            // Rule 14:  Token ::= a f t e r
            //
            case 14: { 
             makeToken($_AFTER_); 
            break;
            }
            //
            // Rule 15:  Token ::= w h e n
            //
            case 15: { 
             makeToken($_WHEN_); 
            break;
            }
            //
            // Rule 16:  Token ::= c a s e
            //
            case 16: { 
             makeToken($_CASE_); 
            break;
            }
            //
            // Rule 17:  Token ::= t r y
            //
            case 17: { 
             makeToken($_TRY_); 
            break;
            }
            //
            // Rule 18:  Token ::= b a n d
            //
            case 18: { 
             makeToken($_BAND_); 
            break;
            }
            //
            // Rule 19:  Token ::= b n o t
            //
            case 19: { 
             makeToken($_BNOT_); 
            break;
            }
            //
            // Rule 20:  Token ::= b x o r
            //
            case 20: { 
             makeToken($_BXOR_); 
            break;
            }
            //
            // Rule 21:  Token ::= d i v
            //
            case 21: { 
             makeToken($_DIV_); 
            break;
            }
            //
            // Rule 22:  Token ::= e n d
            //
            case 22: { 
             makeToken($_END_); 
            break;
            }
            //
            // Rule 23:  Token ::= f u n
            //
            case 23: { 
             makeToken($_FUN_); 
            break;
            }
            //
            // Rule 24:  Token ::= n o t
            //
            case 24: { 
             makeToken($_NOT_); 
            break;
            }
            //
            // Rule 25:  Token ::= r e m
            //
            case 25: { 
             makeToken($_REM_); 
            break;
            }
            //
            // Rule 26:  Token ::= x o r
            //
            case 26: { 
             makeToken($_XOR_); 
            break;
            }
            //
            // Rule 27:  Token ::= a n d
            //
            case 27: { 
             makeToken($_AND_); 
            break;
            }
            //
            // Rule 28:  Token ::= b o r
            //
            case 28: { 
             makeToken($_BOR_); 
            break;
            }
            //
            // Rule 29:  Token ::= b s l
            //
            case 29: { 
             makeToken($_BSL_); 
            break;
            }
            //
            // Rule 30:  Token ::= b s r
            //
            case 30: { 
             makeToken($_BSR_); 
            break;
            }
            //
            // Rule 31:  Token ::= o r
            //
            case 31: { 
             makeToken($_OR_); 
            break;
            }
            //
            // Rule 32:  Token ::= i f
            //
            case 32: { 
             makeToken($_IF_); 
            break;
            }
            //
            // Rule 33:  Token ::= o f
            //
            case 33: { 
             makeToken($_OF_); 
            break;
            }
            //
            // Rule 34:  Token ::= tokAtomRule
            //
            case 34: { 
             makeToken(ErlangLexerexp.TokAtom); 
            break;
            }
            //
            // Rule 35:  Token ::= - :
            //
            case 35: { 
             makeToken(ErlangLexerexp.OP_48394); 
            break;
            }
            //
            // Rule 36:  Token ::= - >
            //
            case 36: { 
             makeToken(ErlangLexerexp.OP_65056); 
            break;
            }
            //
            // Rule 37:  Token ::= | |
            //
            case 37: { 
             makeToken(ErlangLexerexp.OP_96523); 
            break;
            }
            //
            // Rule 38:  Token ::= < <
            //
            case 38: { 
             makeToken(ErlangLexerexp.OP_29819); 
            break;
            }
            //
            // Rule 39:  Token ::= > >
            //
            case 39: { 
             makeToken(ErlangLexerexp.OP_76267); 
            break;
            }
            //
            // Rule 40:  Token ::= = =
            //
            case 40: { 
             makeToken(ErlangLexerexp.OP_6035); 
            break;
            }
            //
            // Rule 41:  Token ::= / =
            //
            case 41: { 
             makeToken(ErlangLexerexp.OP_43392); 
            break;
            }
            //
            // Rule 42:  Token ::= = <
            //
            case 42: { 
             makeToken(ErlangLexerexp.OP_881); 
            break;
            }
            //
            // Rule 43:  Token ::= > =
            //
            case 43: { 
             makeToken(ErlangLexerexp.OP_23772); 
            break;
            }
            //
            // Rule 44:  Token ::= = :
            //
            case 44: { 
             makeToken(ErlangLexerexp.OP_90847); 
            break;
            }
            //
            // Rule 45:  Token ::= + +
            //
            case 45: { 
             makeToken(ErlangLexerexp.OP_68038); 
            break;
            }
            //
            // Rule 46:  Token ::= - -
            //
            case 46: { 
             makeToken(ErlangLexerexp.OP_89122); 
            break;
            }
            //
            // Rule 47:  Token ::= |
            //
            case 47: { 
             makeToken(ErlangLexerexp.OP_23639); 
            break;
            }
            //
            // Rule 48:  Token ::= #
            //
            case 48: { 
             makeToken(ErlangLexerexp.OP_63260); 
            break;
            }
            //
            // Rule 49:  Token ::= .
            //
            case 49: { 
             makeToken(ErlangLexerexp.DOT); 
            break;
            }
            //
            // Rule 50:  Token ::= ,
            //
            case 50: { 
             makeToken(ErlangLexerexp.OP_81532); 
            break;
            }
            //
            // Rule 51:  Token ::= :
            //
            case 51: { 
             makeToken(ErlangLexerexp.OP_88026); 
            break;
            }
            //
            // Rule 52:  Token ::= (
            //
            case 52: { 
             makeToken(ErlangLexerexp.OP_2848); 
            break;
            }
            //
            // Rule 53:  Token ::= )
            //
            case 53: { 
             makeToken(ErlangLexerexp.OP_71962); 
            break;
            }
            //
            // Rule 54:  Token ::= [
            //
            case 54: { 
             makeToken(ErlangLexerexp.OP_21954); 
            break;
            }
            //
            // Rule 55:  Token ::= ]
            //
            case 55: { 
             makeToken(ErlangLexerexp.OP_2262); 
            break;
            }
            //
            // Rule 56:  Token ::= +
            //
            case 56: { 
             makeToken(ErlangLexerexp.OP_22480); 
            break;
            }
            //
            // Rule 57:  Token ::= -
            //
            case 57: { 
             makeToken(ErlangLexerexp.OP_25307); 
            break;
            }
            //
            // Rule 58:  Token ::= *
            //
            case 58: { 
             makeToken(ErlangLexerexp.OP_32002); 
            break;
            }
            //
            // Rule 59:  Token ::= /
            //
            case 59: { 
             makeToken(ErlangLexerexp.OP_21159); 
            break;
            }
            //
            // Rule 60:  Token ::= <
            //
            case 60: { 
             makeToken(ErlangLexerexp.OP_881); 
            break;
            }
            //
            // Rule 61:  Token ::= >
            //
            case 61: { 
             makeToken(ErlangLexerexp.OP_23772); 
            break;
            }
            //
            // Rule 62:  Token ::= =
            //
            case 62: { 
             makeToken(ErlangLexerexp.OP_6035); 
            break;
            }
    //#line 268 "LexerTemplateF.gi

    
            default:
                break;
        }
        return;
    }
}

