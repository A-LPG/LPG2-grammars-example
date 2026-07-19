package lpg.grammars.swift_fin;


    //#line 58 "KeywordTemplateF.gi
import lpg.runtime.*;

    //#line 63 "KeywordTemplateF.gi

public class SwiftFinKWLexer extends SwiftFinKWLexerprs
{
    private char[] inputChars;
    private final int keywordKind[] = new int[1 + 1];

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
                                   ? SwiftFinKWLexersym.Char_EOF
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


    //#line 10 "KWLexerFoldedCaseMapF.gi

    //
    // Each upper case letter is mapped into its corresponding
    // lower case counterpart. For example, if an 'A' appears
    // in the input, it is mapped into SwiftFinKWLexersym.Char_a just
    // like 'a'.
    //
    final static int tokenKind[] = new int[128];
    static
    {
        tokenKind['$'] = SwiftFinKWLexersym.Char_DollarSign;
        tokenKind['%'] = SwiftFinKWLexersym.Char_Percent;
        tokenKind['_'] = SwiftFinKWLexersym.Char__;

        tokenKind['0'] = SwiftFinKWLexersym.Char_0;
        tokenKind['1'] = SwiftFinKWLexersym.Char_1;
        tokenKind['2'] = SwiftFinKWLexersym.Char_2;
        tokenKind['3'] = SwiftFinKWLexersym.Char_3;
        tokenKind['4'] = SwiftFinKWLexersym.Char_4;
        tokenKind['5'] = SwiftFinKWLexersym.Char_5;
        tokenKind['6'] = SwiftFinKWLexersym.Char_6;
        tokenKind['7'] = SwiftFinKWLexersym.Char_7;
        tokenKind['8'] = SwiftFinKWLexersym.Char_8;
        tokenKind['9'] = SwiftFinKWLexersym.Char_9;
        
        tokenKind['a'] = SwiftFinKWLexersym.Char_a;
        tokenKind['b'] = SwiftFinKWLexersym.Char_b;
        tokenKind['c'] = SwiftFinKWLexersym.Char_c;
        tokenKind['d'] = SwiftFinKWLexersym.Char_d;
        tokenKind['e'] = SwiftFinKWLexersym.Char_e;
        tokenKind['f'] = SwiftFinKWLexersym.Char_f;
        tokenKind['g'] = SwiftFinKWLexersym.Char_g;
        tokenKind['h'] = SwiftFinKWLexersym.Char_h;
        tokenKind['i'] = SwiftFinKWLexersym.Char_i;
        tokenKind['j'] = SwiftFinKWLexersym.Char_j;
        tokenKind['k'] = SwiftFinKWLexersym.Char_k;
        tokenKind['l'] = SwiftFinKWLexersym.Char_l;
        tokenKind['m'] = SwiftFinKWLexersym.Char_m;
        tokenKind['n'] = SwiftFinKWLexersym.Char_n;
        tokenKind['o'] = SwiftFinKWLexersym.Char_o;
        tokenKind['p'] = SwiftFinKWLexersym.Char_p;
        tokenKind['q'] = SwiftFinKWLexersym.Char_q;
        tokenKind['r'] = SwiftFinKWLexersym.Char_r;
        tokenKind['s'] = SwiftFinKWLexersym.Char_s;
        tokenKind['t'] = SwiftFinKWLexersym.Char_t;
        tokenKind['u'] = SwiftFinKWLexersym.Char_u;
        tokenKind['v'] = SwiftFinKWLexersym.Char_v;
        tokenKind['w'] = SwiftFinKWLexersym.Char_w;
        tokenKind['x'] = SwiftFinKWLexersym.Char_x;
        tokenKind['y'] = SwiftFinKWLexersym.Char_y;
        tokenKind['z'] = SwiftFinKWLexersym.Char_z;

        tokenKind['A'] = SwiftFinKWLexersym.Char_a;
        tokenKind['B'] = SwiftFinKWLexersym.Char_b;
        tokenKind['C'] = SwiftFinKWLexersym.Char_c;
        tokenKind['D'] = SwiftFinKWLexersym.Char_d;
        tokenKind['E'] = SwiftFinKWLexersym.Char_e;
        tokenKind['F'] = SwiftFinKWLexersym.Char_f;
        tokenKind['G'] = SwiftFinKWLexersym.Char_g;
        tokenKind['H'] = SwiftFinKWLexersym.Char_h;
        tokenKind['I'] = SwiftFinKWLexersym.Char_i;
        tokenKind['J'] = SwiftFinKWLexersym.Char_j;
        tokenKind['K'] = SwiftFinKWLexersym.Char_k;
        tokenKind['L'] = SwiftFinKWLexersym.Char_l;
        tokenKind['M'] = SwiftFinKWLexersym.Char_m;
        tokenKind['N'] = SwiftFinKWLexersym.Char_n;
        tokenKind['O'] = SwiftFinKWLexersym.Char_o;
        tokenKind['P'] = SwiftFinKWLexersym.Char_p;
        tokenKind['Q'] = SwiftFinKWLexersym.Char_q;
        tokenKind['R'] = SwiftFinKWLexersym.Char_r;
        tokenKind['S'] = SwiftFinKWLexersym.Char_s;
        tokenKind['T'] = SwiftFinKWLexersym.Char_t;
        tokenKind['U'] = SwiftFinKWLexersym.Char_u;
        tokenKind['V'] = SwiftFinKWLexersym.Char_v;
        tokenKind['W'] = SwiftFinKWLexersym.Char_w;
        tokenKind['X'] = SwiftFinKWLexersym.Char_x;
        tokenKind['Y'] = SwiftFinKWLexersym.Char_y;
        tokenKind['Z'] = SwiftFinKWLexersym.Char_z;
    };

    final int getKind(char c)
    {
        return (c < 128 ? tokenKind[c] : 0);
    }

    //#line 101 "KeywordTemplateF.gi


    public SwiftFinKWLexer(char[] inputChars, int identifierKind)
    {
        this.inputChars = inputChars;
        keywordKind[0] = identifierKind;

        //
        // Rule 1:  Keyword ::= z z z
        //
        keywordKind[1] = (SwiftFinLexerexp.IDENTIFIER);

    //#line 111 "KeywordTemplateF.gi

        for (int i = 0; i < keywordKind.length; i++)
        {
            if (keywordKind[i] == 0)
                keywordKind[i] = identifierKind;
        }
    }
}

