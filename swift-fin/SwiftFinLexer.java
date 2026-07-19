package lpg.grammars.swift_fin;


    //#line 123 "LexerTemplateF.gi
import lpg.runtime.*;

    //#line 128 "LexerTemplateF.gi

public class SwiftFinLexer extends Object implements RuleAction
{
    private SwiftFinLexerLpgLexStream lexStream;
    
    private static ParseTable prs = new SwiftFinLexerprs();
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
              this.kwLexer = new SwiftFinKWLexer(lexStream.getInputChars(), SwiftFinLexerexp.IDENTIFIER);
        else this.kwLexer.setInputChars(lexStream.getInputChars());
    }

    public void reset(String filename, int tab) throws java.io.IOException
    {
        lexStream = new SwiftFinLexerLpgLexStream(filename, tab);
        lexParser.reset((ILexStream) lexStream, prs, (RuleAction) this);
        resetKeywordLexer();
    }

    public void reset(char[] input_chars, String filename)
    {
        reset(input_chars, filename, 1);
    }
    
    public void reset(char[] input_chars, String filename, int tab)
    {
        lexStream = new SwiftFinLexerLpgLexStream(input_chars, filename, tab);
        lexParser.reset((ILexStream) lexStream, prs, (RuleAction) this);
        resetKeywordLexer();
    }
    
    public SwiftFinLexer(String filename, int tab) throws java.io.IOException 
    {
        reset(filename, tab);
    }

    public SwiftFinLexer(char[] input_chars, String filename, int tab)
    {
        reset(input_chars, filename, tab);
    }

    public SwiftFinLexer(char[] input_chars, String filename)
    {
        reset(input_chars, filename, 1);
    }

    public SwiftFinLexer() {}

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
        prsStream.makeToken(end_offset, end_offset, SwiftFinLexerexp.EOF_TOKEN); // and end with the end of file token
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

    //#line 5 "LexerBasicMapF.gi

    //
    // The Lexer contains an array of characters as the input stream to be parsed.
    // There are methods to retrieve and classify characters.
    // The lexparser "token" is implemented simply as the index of the next character in the array.
    // The Lexer extends the abstract class LpgLexStream with an implementation of the abstract
    // method getKind.  The template defines the Lexer class and the lexer() method.
    // A driver creates the action class, "Lexer", passing an Option object to the constructor.
    //
    SwiftFinKWLexer kwLexer;
    boolean printTokens;
    private final static int ECLIPSE_TAB_VALUE = 4;

    public int [] getKeywordKinds() { return kwLexer.getKeywordKinds(); }

    public SwiftFinLexer(String filename) throws java.io.IOException
    {
        this(filename, ECLIPSE_TAB_VALUE);
        this.kwLexer = new SwiftFinKWLexer(lexStream.getInputChars(), SwiftFinLexerexp.IDENTIFIER);
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
        if (kwKind == SwiftFinLexerexp.IDENTIFIER)
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
    static class SwiftFinLexerLpgLexStream extends LpgLexStream
    {
    public final static int tokenKind[] =
    {
        SwiftFinLexersym.Char_CtlCharNotWS,    // 000    0x00
        SwiftFinLexersym.Char_CtlCharNotWS,    // 001    0x01
        SwiftFinLexersym.Char_CtlCharNotWS,    // 002    0x02
        SwiftFinLexersym.Char_CtlCharNotWS,    // 003    0x03
        SwiftFinLexersym.Char_CtlCharNotWS,    // 004    0x04
        SwiftFinLexersym.Char_CtlCharNotWS,    // 005    0x05
        SwiftFinLexersym.Char_CtlCharNotWS,    // 006    0x06
        SwiftFinLexersym.Char_CtlCharNotWS,    // 007    0x07
        SwiftFinLexersym.Char_CtlCharNotWS,    // 008    0x08
        SwiftFinLexersym.Char_HT,              // 009    0x09
        SwiftFinLexersym.Char_LF,              // 010    0x0A
        SwiftFinLexersym.Char_CtlCharNotWS,    // 011    0x0B
        SwiftFinLexersym.Char_FF,              // 012    0x0C
        SwiftFinLexersym.Char_CR,              // 013    0x0D
        SwiftFinLexersym.Char_CtlCharNotWS,    // 014    0x0E
        SwiftFinLexersym.Char_CtlCharNotWS,    // 015    0x0F
        SwiftFinLexersym.Char_CtlCharNotWS,    // 016    0x10
        SwiftFinLexersym.Char_CtlCharNotWS,    // 017    0x11
        SwiftFinLexersym.Char_CtlCharNotWS,    // 018    0x12
        SwiftFinLexersym.Char_CtlCharNotWS,    // 019    0x13
        SwiftFinLexersym.Char_CtlCharNotWS,    // 020    0x14
        SwiftFinLexersym.Char_CtlCharNotWS,    // 021    0x15
        SwiftFinLexersym.Char_CtlCharNotWS,    // 022    0x16
        SwiftFinLexersym.Char_CtlCharNotWS,    // 023    0x17
        SwiftFinLexersym.Char_CtlCharNotWS,    // 024    0x18
        SwiftFinLexersym.Char_CtlCharNotWS,    // 025    0x19
        SwiftFinLexersym.Char_CtlCharNotWS,    // 026    0x1A
        SwiftFinLexersym.Char_CtlCharNotWS,    // 027    0x1B
        SwiftFinLexersym.Char_CtlCharNotWS,    // 028    0x1C
        SwiftFinLexersym.Char_CtlCharNotWS,    // 029    0x1D
        SwiftFinLexersym.Char_CtlCharNotWS,    // 030    0x1E
        SwiftFinLexersym.Char_CtlCharNotWS,    // 031    0x1F
        SwiftFinLexersym.Char_Space,           // 032    0x20
        SwiftFinLexersym.Char_Exclamation,     // 033    0x21
        SwiftFinLexersym.Char_DoubleQuote,     // 034    0x22
        SwiftFinLexersym.Char_Sharp,           // 035    0x23
        SwiftFinLexersym.Char_DollarSign,      // 036    0x24
        SwiftFinLexersym.Char_Percent,         // 037    0x25
        SwiftFinLexersym.Char_Ampersand,       // 038    0x26
        SwiftFinLexersym.Char_SingleQuote,     // 039    0x27
        SwiftFinLexersym.Char_LeftParen,       // 040    0x28
        SwiftFinLexersym.Char_RightParen,      // 041    0x29
        SwiftFinLexersym.Char_Star,            // 042    0x2A
        SwiftFinLexersym.Char_Plus,            // 043    0x2B
        SwiftFinLexersym.Char_Comma,           // 044    0x2C
        SwiftFinLexersym.Char_Minus,           // 045    0x2D
        SwiftFinLexersym.Char_Dot,             // 046    0x2E
        SwiftFinLexersym.Char_Slash,           // 047    0x2F
        SwiftFinLexersym.Char_0,               // 048    0x30
        SwiftFinLexersym.Char_1,               // 049    0x31
        SwiftFinLexersym.Char_2,               // 050    0x32
        SwiftFinLexersym.Char_3,               // 051    0x33
        SwiftFinLexersym.Char_4,               // 052    0x34
        SwiftFinLexersym.Char_5,               // 053    0x35
        SwiftFinLexersym.Char_6,               // 054    0x36
        SwiftFinLexersym.Char_7,               // 055    0x37
        SwiftFinLexersym.Char_8,               // 056    0x38
        SwiftFinLexersym.Char_9,               // 057    0x39
        SwiftFinLexersym.Char_Colon,           // 058    0x3A
        SwiftFinLexersym.Char_SemiColon,       // 059    0x3B
        SwiftFinLexersym.Char_LessThan,        // 060    0x3C
        SwiftFinLexersym.Char_Equal,           // 061    0x3D
        SwiftFinLexersym.Char_GreaterThan,     // 062    0x3E
        SwiftFinLexersym.Char_QuestionMark,    // 063    0x3F
        SwiftFinLexersym.Char_AtSign,          // 064    0x40
        SwiftFinLexersym.Char_A,               // 065    0x41
        SwiftFinLexersym.Char_B,               // 066    0x42
        SwiftFinLexersym.Char_C,               // 067    0x43
        SwiftFinLexersym.Char_D,               // 068    0x44
        SwiftFinLexersym.Char_E,               // 069    0x45
        SwiftFinLexersym.Char_F,               // 070    0x46
        SwiftFinLexersym.Char_G,               // 071    0x47
        SwiftFinLexersym.Char_H,               // 072    0x48
        SwiftFinLexersym.Char_I,               // 073    0x49
        SwiftFinLexersym.Char_J,               // 074    0x4A
        SwiftFinLexersym.Char_K,               // 075    0x4B
        SwiftFinLexersym.Char_L,               // 076    0x4C
        SwiftFinLexersym.Char_M,               // 077    0x4D
        SwiftFinLexersym.Char_N,               // 078    0x4E
        SwiftFinLexersym.Char_O,               // 079    0x4F
        SwiftFinLexersym.Char_P,               // 080    0x50
        SwiftFinLexersym.Char_Q,               // 081    0x51
        SwiftFinLexersym.Char_R,               // 082    0x52
        SwiftFinLexersym.Char_S,               // 083    0x53
        SwiftFinLexersym.Char_T,               // 084    0x54
        SwiftFinLexersym.Char_U,               // 085    0x55
        SwiftFinLexersym.Char_V,               // 086    0x56
        SwiftFinLexersym.Char_W,               // 087    0x57
        SwiftFinLexersym.Char_X,               // 088    0x58
        SwiftFinLexersym.Char_Y,               // 089    0x59
        SwiftFinLexersym.Char_Z,               // 090    0x5A
        SwiftFinLexersym.Char_LeftBracket,     // 091    0x5B
        SwiftFinLexersym.Char_BackSlash,       // 092    0x5C
        SwiftFinLexersym.Char_RightBracket,    // 093    0x5D
        SwiftFinLexersym.Char_Caret,           // 094    0x5E
        SwiftFinLexersym.Char__,               // 095    0x5F
        SwiftFinLexersym.Char_BackQuote,       // 096    0x60
        SwiftFinLexersym.Char_a,               // 097    0x61
        SwiftFinLexersym.Char_b,               // 098    0x62
        SwiftFinLexersym.Char_c,               // 099    0x63
        SwiftFinLexersym.Char_d,               // 100    0x64
        SwiftFinLexersym.Char_e,               // 101    0x65
        SwiftFinLexersym.Char_f,               // 102    0x66
        SwiftFinLexersym.Char_g,               // 103    0x67
        SwiftFinLexersym.Char_h,               // 104    0x68
        SwiftFinLexersym.Char_i,               // 105    0x69
        SwiftFinLexersym.Char_j,               // 106    0x6A
        SwiftFinLexersym.Char_k,               // 107    0x6B
        SwiftFinLexersym.Char_l,               // 108    0x6C
        SwiftFinLexersym.Char_m,               // 109    0x6D
        SwiftFinLexersym.Char_n,               // 110    0x6E
        SwiftFinLexersym.Char_o,               // 111    0x6F
        SwiftFinLexersym.Char_p,               // 112    0x70
        SwiftFinLexersym.Char_q,               // 113    0x71
        SwiftFinLexersym.Char_r,               // 114    0x72
        SwiftFinLexersym.Char_s,               // 115    0x73
        SwiftFinLexersym.Char_t,               // 116    0x74
        SwiftFinLexersym.Char_u,               // 117    0x75
        SwiftFinLexersym.Char_v,               // 118    0x76
        SwiftFinLexersym.Char_w,               // 119    0x77
        SwiftFinLexersym.Char_x,               // 120    0x78
        SwiftFinLexersym.Char_y,               // 121    0x79
        SwiftFinLexersym.Char_z,               // 122    0x7A
        SwiftFinLexersym.Char_LeftBrace,       // 123    0x7B
        SwiftFinLexersym.Char_VerticalBar,     // 124    0x7C
        SwiftFinLexersym.Char_RightBrace,      // 125    0x7D
        SwiftFinLexersym.Char_Tilde,           // 126    0x7E

        SwiftFinLexersym.Char_AfterASCII,      // for all chars in range 128..65534
        SwiftFinLexersym.Char_EOF              // for '\uffff' or 65535 
    };
            
    public final int getKind(int i)  // Classify character at ith location
    {
        int c = (i >= getStreamLength() ? '\uffff' : getCharValue(i));
        return (c < 128 // ASCII Character
                  ? tokenKind[c]
                  : c == '\uffff'
                       ? SwiftFinLexersym.Char_EOF
                       : SwiftFinLexersym.Char_AfterASCII);
    }

    public String[] orderedExportedSymbols() { return SwiftFinLexerexp.orderedTerminalSymbols; }

    public SwiftFinLexerLpgLexStream(String filename, int tab) throws java.io.IOException
    {
        super(filename, tab);
    }

    public SwiftFinLexerLpgLexStream(char[] input_chars, String filename, int tab)
    {
        super(input_chars, filename, tab);
    }

    public SwiftFinLexerLpgLexStream(char[] input_chars, String filename)
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
            // Rule 1:  Token ::= Block1Start
            //
            case 1: { 
             makeToken(SwiftFinLexerexp.BLOCK1); 
            break;
            }
            //
            // Rule 2:  Token ::= Block2Start
            //
            case 2: { 
             makeToken(SwiftFinLexerexp.BLOCK2); 
            break;
            }
            //
            // Rule 3:  Token ::= Block3Start
            //
            case 3: { 
             makeToken(SwiftFinLexerexp.BLOCK3); 
            break;
            }
            //
            // Rule 4:  Token ::= Block4AStart
            //
            case 4: { 
             makeToken(SwiftFinLexerexp.BLOCK4_A); 
            break;
            }
            //
            // Rule 5:  Token ::= Block4BStart
            //
            case 5: { 
             makeToken(SwiftFinLexerexp.BLOCK4_B); 
            break;
            }
            //
            // Rule 6:  Token ::= Block5Start
            //
            case 6: { 
             makeToken(SwiftFinLexerexp.BLOCK5); 
            break;
            }
            //
            // Rule 7:  Token ::= B4EndTok
            //
            case 7: { 
             makeToken(SwiftFinLexerexp.B4_END); 
            break;
            }
            //
            // Rule 8:  Token ::= B4ColonTok
            //
            case 8: { 
             makeToken(SwiftFinLexerexp.B4_COLON); 
            break;
            }
            //
            // Rule 9:  Token ::= B4CrlfTok
            //
            case 9: { 
             makeToken(SwiftFinLexerexp.B4_CRLF); 
            break;
            }
            //
            // Rule 10:  Token ::= B4ValueTok
            //
            case 10: { 
             makeToken(SwiftFinLexerexp.B4_VALUE); 
            break;
            }
            //
            // Rule 11:  Token ::= MapLBrace
            //
            case 11: { 
             makeToken(SwiftFinLexerexp.LBRACE); 
            break;
            }
            //
            // Rule 12:  Token ::= MapRBrace
            //
            case 12: { 
             makeToken(SwiftFinLexerexp.RBRACE); 
            break;
            }
            //
            // Rule 13:  Token ::= MapColon
            //
            case 13: { 
             makeToken(SwiftFinLexerexp.M_COLON); 
            break;
            }
            //
            // Rule 14:  Token ::= MapValue
            //
            case 14: { 
             makeToken(SwiftFinLexerexp.M_VALUE); 
            break;
            }
            //
            // Rule 15:  Token ::= VEndTok
            //
            case 15: { 
             makeToken(SwiftFinLexerexp.V_END); 
            break;
            }
            //
            // Rule 16:  Token ::= VValueTok
            //
            case 16: { 
             makeToken(SwiftFinLexerexp.V_VALUE); 
            break;
            }
            //
            // Rule 17:  Token ::= white
            //
            case 17: { 
             skipToken(); 
            break;
            }
    //#line 268 "LexerTemplateF.gi

    
            default:
                break;
        }
        return;
    }
}

