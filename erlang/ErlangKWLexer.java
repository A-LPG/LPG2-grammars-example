package lpg.grammars.erlang;


    //#line 58 "KeywordTemplateF.gi
import lpg.runtime.*;

    //#line 63 "KeywordTemplateF.gi

public class ErlangKWLexer extends ErlangKWLexerprs
{
    private char[] inputChars;
    private final int keywordKind[] = new int[25 + 1];

    public int[] getKeywordKinds() { return keywordKind; }

    public int lexer(int curtok, int lasttok)
    {
        int current_kind = getKind(inputChars[curtok]),
            act;

        for (act = tAction(START_STATE, current_kind);
             act > NUM_RULES && act < ACCEPT_ACTION;
             act = tAction(act, current_kind))
        {
            curtok++;
            current_kind = (curtok > lasttok
                                   ? ErlangKWLexersym.Char_EOF
                                   : getKind(inputChars[curtok]));
        }

        if (act > ERROR_ACTION)
        {
            curtok++;
            act -= ERROR_ACTION;
        }

        return keywordKind[act == ERROR_ACTION  || curtok <= lasttok ? 0 : act];
    }

    public void setInputChars(char[] inputChars) { this.inputChars = inputChars; }


    //#line 11 "KWLexerLowerCaseMapF.gi

    final static int tokenKind[] = new int[128];
    static
    {
        tokenKind['$'] = ErlangKWLexersym.Char_DollarSign;
        tokenKind['%'] = ErlangKWLexersym.Char_Percent;
        tokenKind['_'] = ErlangKWLexersym.Char__;

        tokenKind['0'] = ErlangKWLexersym.Char_0;
        tokenKind['1'] = ErlangKWLexersym.Char_1;
        tokenKind['2'] = ErlangKWLexersym.Char_2;
        tokenKind['3'] = ErlangKWLexersym.Char_3;
        tokenKind['4'] = ErlangKWLexersym.Char_4;
        tokenKind['5'] = ErlangKWLexersym.Char_5;
        tokenKind['6'] = ErlangKWLexersym.Char_6;
        tokenKind['7'] = ErlangKWLexersym.Char_7;
        tokenKind['8'] = ErlangKWLexersym.Char_8;
        tokenKind['9'] = ErlangKWLexersym.Char_9;

        tokenKind['a'] = ErlangKWLexersym.Char_a;
        tokenKind['b'] = ErlangKWLexersym.Char_b;
        tokenKind['c'] = ErlangKWLexersym.Char_c;
        tokenKind['d'] = ErlangKWLexersym.Char_d;
        tokenKind['e'] = ErlangKWLexersym.Char_e;
        tokenKind['f'] = ErlangKWLexersym.Char_f;
        tokenKind['g'] = ErlangKWLexersym.Char_g;
        tokenKind['h'] = ErlangKWLexersym.Char_h;
        tokenKind['i'] = ErlangKWLexersym.Char_i;
        tokenKind['j'] = ErlangKWLexersym.Char_j;
        tokenKind['k'] = ErlangKWLexersym.Char_k;
        tokenKind['l'] = ErlangKWLexersym.Char_l;
        tokenKind['m'] = ErlangKWLexersym.Char_m;
        tokenKind['n'] = ErlangKWLexersym.Char_n;
        tokenKind['o'] = ErlangKWLexersym.Char_o;
        tokenKind['p'] = ErlangKWLexersym.Char_p;
        tokenKind['q'] = ErlangKWLexersym.Char_q;
        tokenKind['r'] = ErlangKWLexersym.Char_r;
        tokenKind['s'] = ErlangKWLexersym.Char_s;
        tokenKind['t'] = ErlangKWLexersym.Char_t;
        tokenKind['u'] = ErlangKWLexersym.Char_u;
        tokenKind['v'] = ErlangKWLexersym.Char_v;
        tokenKind['w'] = ErlangKWLexersym.Char_w;
        tokenKind['x'] = ErlangKWLexersym.Char_x;
        tokenKind['y'] = ErlangKWLexersym.Char_y;
        tokenKind['z'] = ErlangKWLexersym.Char_z;
    };

    final int getKind(int c)
    {
        return ((c & 0xFFFFFF80) == 0 /* 0 <= c < 128? */ ? tokenKind[c] : 0);
    }

    //#line 101 "KeywordTemplateF.gi


    public ErlangKWLexer(char[] inputChars, int identifierKind)
    {
        this.inputChars = inputChars;
        keywordKind[0] = identifierKind;

        //
        // Rule 1:  Keyword ::= i f
        //
        keywordKind[1] = ($_IF_);

        //
        // Rule 2:  Keyword ::= c a s e
        //
        keywordKind[2] = ($_CASE_);

        //
        // Rule 3:  Keyword ::= b e g i n
        //
        keywordKind[3] = ($_BEGIN_);

        //
        // Rule 4:  Keyword ::= e n d
        //
        keywordKind[4] = ($_END_);

        //
        // Rule 5:  Keyword ::= f u n
        //
        keywordKind[5] = ($_FUN_);

        //
        // Rule 6:  Keyword ::= r e c e i v e
        //
        keywordKind[6] = ($_RECEIVE_);

        //
        // Rule 7:  Keyword ::= t r y
        //
        keywordKind[7] = ($_TRY_);

        //
        // Rule 8:  Keyword ::= c a t c h
        //
        keywordKind[8] = ($_CATCH_);

        //
        // Rule 9:  Keyword ::= a f t e r
        //
        keywordKind[9] = ($_AFTER_);

        //
        // Rule 10:  Keyword ::= o f
        //
        keywordKind[10] = ($_OF_);

        //
        // Rule 11:  Keyword ::= w h e n
        //
        keywordKind[11] = ($_WHEN_);

        //
        // Rule 12:  Keyword ::= n o t
        //
        keywordKind[12] = ($_NOT_);

        //
        // Rule 13:  Keyword ::= b n o t
        //
        keywordKind[13] = ($_BNOT_);

        //
        // Rule 14:  Keyword ::= a n d
        //
        keywordKind[14] = ($_AND_);

        //
        // Rule 15:  Keyword ::= b a n d
        //
        keywordKind[15] = ($_BAND_);

        //
        // Rule 16:  Keyword ::= o r
        //
        keywordKind[16] = ($_OR_);

        //
        // Rule 17:  Keyword ::= b o r
        //
        keywordKind[17] = ($_BOR_);

        //
        // Rule 18:  Keyword ::= x o r
        //
        keywordKind[18] = ($_XOR_);

        //
        // Rule 19:  Keyword ::= b x o r
        //
        keywordKind[19] = ($_BXOR_);

        //
        // Rule 20:  Keyword ::= d i v
        //
        keywordKind[20] = ($_DIV_);

        //
        // Rule 21:  Keyword ::= r e m
        //
        keywordKind[21] = ($_REM_);

        //
        // Rule 22:  Keyword ::= b s l
        //
        keywordKind[22] = ($_BSL_);

        //
        // Rule 23:  Keyword ::= b s r
        //
        keywordKind[23] = ($_BSR_);

        //
        // Rule 24:  Keyword ::= a n d a l s o
        //
        keywordKind[24] = ($_ANDALSO_);

        //
        // Rule 25:  Keyword ::= o r e l s e
        //
        keywordKind[25] = ($_ORELSE_);

    //#line 111 "KeywordTemplateF.gi

        for (int i = 0; i < keywordKind.length; i++)
        {
            if (keywordKind[i] == 0)
                keywordKind[i] = identifierKind;
        }
    }
}

