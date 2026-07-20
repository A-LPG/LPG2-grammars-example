package lpg.grammars.json;


    //#line 58 "KeywordTemplateF.gi
import lpg.runtime.*;

    //#line 63 "KeywordTemplateF.gi

public class JsonKWLexer extends JsonKWLexerprs
{
    private char[] inputChars;
    private final int keywordKind[] = new int[3 + 1];

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
                                   ? JsonKWLexersym.Char_EOF
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
        tokenKind['$'] = JsonKWLexersym.Char_DollarSign;
        tokenKind['%'] = JsonKWLexersym.Char_Percent;
        tokenKind['_'] = JsonKWLexersym.Char__;

        tokenKind['0'] = JsonKWLexersym.Char_0;
        tokenKind['1'] = JsonKWLexersym.Char_1;
        tokenKind['2'] = JsonKWLexersym.Char_2;
        tokenKind['3'] = JsonKWLexersym.Char_3;
        tokenKind['4'] = JsonKWLexersym.Char_4;
        tokenKind['5'] = JsonKWLexersym.Char_5;
        tokenKind['6'] = JsonKWLexersym.Char_6;
        tokenKind['7'] = JsonKWLexersym.Char_7;
        tokenKind['8'] = JsonKWLexersym.Char_8;
        tokenKind['9'] = JsonKWLexersym.Char_9;

        tokenKind['a'] = JsonKWLexersym.Char_a;
        tokenKind['b'] = JsonKWLexersym.Char_b;
        tokenKind['c'] = JsonKWLexersym.Char_c;
        tokenKind['d'] = JsonKWLexersym.Char_d;
        tokenKind['e'] = JsonKWLexersym.Char_e;
        tokenKind['f'] = JsonKWLexersym.Char_f;
        tokenKind['g'] = JsonKWLexersym.Char_g;
        tokenKind['h'] = JsonKWLexersym.Char_h;
        tokenKind['i'] = JsonKWLexersym.Char_i;
        tokenKind['j'] = JsonKWLexersym.Char_j;
        tokenKind['k'] = JsonKWLexersym.Char_k;
        tokenKind['l'] = JsonKWLexersym.Char_l;
        tokenKind['m'] = JsonKWLexersym.Char_m;
        tokenKind['n'] = JsonKWLexersym.Char_n;
        tokenKind['o'] = JsonKWLexersym.Char_o;
        tokenKind['p'] = JsonKWLexersym.Char_p;
        tokenKind['q'] = JsonKWLexersym.Char_q;
        tokenKind['r'] = JsonKWLexersym.Char_r;
        tokenKind['s'] = JsonKWLexersym.Char_s;
        tokenKind['t'] = JsonKWLexersym.Char_t;
        tokenKind['u'] = JsonKWLexersym.Char_u;
        tokenKind['v'] = JsonKWLexersym.Char_v;
        tokenKind['w'] = JsonKWLexersym.Char_w;
        tokenKind['x'] = JsonKWLexersym.Char_x;
        tokenKind['y'] = JsonKWLexersym.Char_y;
        tokenKind['z'] = JsonKWLexersym.Char_z;
    };

    final int getKind(int c)
    {
        return ((c & 0xFFFFFF80) == 0 /* 0 <= c < 128? */ ? tokenKind[c] : 0);
    }

    //#line 101 "KeywordTemplateF.gi


    public JsonKWLexer(char[] inputChars, int identifierKind)
    {
        this.inputChars = inputChars;
        keywordKind[0] = identifierKind;

        //
        // Rule 1:  Keyword ::= t r u e
        //
        keywordKind[1] = (JsonKWLexerexp.TRUE);

        //
        // Rule 2:  Keyword ::= f a l s e
        //
        keywordKind[2] = (JsonKWLexerexp.FALSE);

        //
        // Rule 3:  Keyword ::= n u l l
        //
        keywordKind[3] = (JsonKWLexerexp.NULLLITERAL);

    //#line 111 "KeywordTemplateF.gi

        for (int i = 0; i < keywordKind.length; i++)
        {
            if (keywordKind[i] == 0)
                keywordKind[i] = identifierKind;
        }
    }
}

