package lpg.grammars.cobol85;


    //#line 58 "KeywordTemplateF.gi
import lpg.runtime.*;

    //#line 63 "KeywordTemplateF.gi

public class Cobol85KWLexer extends Cobol85KWLexerprs
{
    private char[] inputChars;
    private final int keywordKind[] = new int[631 + 1];

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
                                   ? Cobol85KWLexersym.Char_EOF
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
    // in the input, it is mapped into Cobol85KWLexersym.Char_a just
    // like 'a'.
    //
    final static int tokenKind[] = new int[128];
    static
    {
        tokenKind['$'] = Cobol85KWLexersym.Char_DollarSign;
        tokenKind['%'] = Cobol85KWLexersym.Char_Percent;
        tokenKind['_'] = Cobol85KWLexersym.Char__;

        tokenKind['0'] = Cobol85KWLexersym.Char_0;
        tokenKind['1'] = Cobol85KWLexersym.Char_1;
        tokenKind['2'] = Cobol85KWLexersym.Char_2;
        tokenKind['3'] = Cobol85KWLexersym.Char_3;
        tokenKind['4'] = Cobol85KWLexersym.Char_4;
        tokenKind['5'] = Cobol85KWLexersym.Char_5;
        tokenKind['6'] = Cobol85KWLexersym.Char_6;
        tokenKind['7'] = Cobol85KWLexersym.Char_7;
        tokenKind['8'] = Cobol85KWLexersym.Char_8;
        tokenKind['9'] = Cobol85KWLexersym.Char_9;
        
        tokenKind['a'] = Cobol85KWLexersym.Char_a;
        tokenKind['b'] = Cobol85KWLexersym.Char_b;
        tokenKind['c'] = Cobol85KWLexersym.Char_c;
        tokenKind['d'] = Cobol85KWLexersym.Char_d;
        tokenKind['e'] = Cobol85KWLexersym.Char_e;
        tokenKind['f'] = Cobol85KWLexersym.Char_f;
        tokenKind['g'] = Cobol85KWLexersym.Char_g;
        tokenKind['h'] = Cobol85KWLexersym.Char_h;
        tokenKind['i'] = Cobol85KWLexersym.Char_i;
        tokenKind['j'] = Cobol85KWLexersym.Char_j;
        tokenKind['k'] = Cobol85KWLexersym.Char_k;
        tokenKind['l'] = Cobol85KWLexersym.Char_l;
        tokenKind['m'] = Cobol85KWLexersym.Char_m;
        tokenKind['n'] = Cobol85KWLexersym.Char_n;
        tokenKind['o'] = Cobol85KWLexersym.Char_o;
        tokenKind['p'] = Cobol85KWLexersym.Char_p;
        tokenKind['q'] = Cobol85KWLexersym.Char_q;
        tokenKind['r'] = Cobol85KWLexersym.Char_r;
        tokenKind['s'] = Cobol85KWLexersym.Char_s;
        tokenKind['t'] = Cobol85KWLexersym.Char_t;
        tokenKind['u'] = Cobol85KWLexersym.Char_u;
        tokenKind['v'] = Cobol85KWLexersym.Char_v;
        tokenKind['w'] = Cobol85KWLexersym.Char_w;
        tokenKind['x'] = Cobol85KWLexersym.Char_x;
        tokenKind['y'] = Cobol85KWLexersym.Char_y;
        tokenKind['z'] = Cobol85KWLexersym.Char_z;

        tokenKind['A'] = Cobol85KWLexersym.Char_a;
        tokenKind['B'] = Cobol85KWLexersym.Char_b;
        tokenKind['C'] = Cobol85KWLexersym.Char_c;
        tokenKind['D'] = Cobol85KWLexersym.Char_d;
        tokenKind['E'] = Cobol85KWLexersym.Char_e;
        tokenKind['F'] = Cobol85KWLexersym.Char_f;
        tokenKind['G'] = Cobol85KWLexersym.Char_g;
        tokenKind['H'] = Cobol85KWLexersym.Char_h;
        tokenKind['I'] = Cobol85KWLexersym.Char_i;
        tokenKind['J'] = Cobol85KWLexersym.Char_j;
        tokenKind['K'] = Cobol85KWLexersym.Char_k;
        tokenKind['L'] = Cobol85KWLexersym.Char_l;
        tokenKind['M'] = Cobol85KWLexersym.Char_m;
        tokenKind['N'] = Cobol85KWLexersym.Char_n;
        tokenKind['O'] = Cobol85KWLexersym.Char_o;
        tokenKind['P'] = Cobol85KWLexersym.Char_p;
        tokenKind['Q'] = Cobol85KWLexersym.Char_q;
        tokenKind['R'] = Cobol85KWLexersym.Char_r;
        tokenKind['S'] = Cobol85KWLexersym.Char_s;
        tokenKind['T'] = Cobol85KWLexersym.Char_t;
        tokenKind['U'] = Cobol85KWLexersym.Char_u;
        tokenKind['V'] = Cobol85KWLexersym.Char_v;
        tokenKind['W'] = Cobol85KWLexersym.Char_w;
        tokenKind['X'] = Cobol85KWLexersym.Char_x;
        tokenKind['Y'] = Cobol85KWLexersym.Char_y;
        tokenKind['Z'] = Cobol85KWLexersym.Char_z;
    };

    final int getKind(char c)
    {
        return (c < 128 ? tokenKind[c] : 0);
    }

    //#line 101 "KeywordTemplateF.gi


    public Cobol85KWLexer(char[] inputChars, int identifierKind)
    {
        this.inputChars = inputChars;
        keywordKind[0] = identifierKind;

        //
        // Rule 1:  Keyword ::= s h a r e d b y r u n u n i t
        //
        keywordKind[1] = (Cobol85KWLexerexp.SHAREDBYRUNUNIT);

        //
        // Rule 2:  Keyword ::= i d e n t i f i c a t i o n
        //
        keywordKind[2] = (Cobol85KWLexerexp.IDENTIFICATION);

        //
        // Rule 3:  Keyword ::= c o m m u n i c a t i o n
        //
        keywordKind[3] = (Cobol85KWLexerexp.COMMUNICATION);

        //
        // Rule 4:  Keyword ::= c o m p u t a t i o n a l
        //
        keywordKind[4] = (Cobol85KWLexerexp.COMPUTATIONAL);

        //
        // Rule 5:  Keyword ::= c o n f i g u r a t i o n
        //
        keywordKind[5] = (Cobol85KWLexerexp.CONFIGURATION);

        //
        // Rule 6:  Keyword ::= c o r r e s p o n d i n g
        //
        keywordKind[6] = (Cobol85KWLexerexp.CORRESPONDING);

        //
        // Rule 7:  Keyword ::= a l p h a n u m e r i c
        //
        keywordKind[7] = (Cobol85KWLexerexp.ALPHANUMERIC);

        //
        // Rule 8:  Keyword ::= d e c l a r a t i v e s
        //
        keywordKind[8] = (Cobol85KWLexerexp.DECLARATIVES);

        //
        // Rule 9:  Keyword ::= f u n c t i o n n a m e
        //
        keywordKind[9] = (Cobol85KWLexerexp.FUNCTIONNAME);

        //
        // Rule 10:  Keyword ::= i n s t a l l a t i o n
        //
        keywordKind[10] = (Cobol85KWLexerexp.INSTALLATION);

        //
        // Rule 11:  Keyword ::= l i b p a r a m e t e r
        //
        keywordKind[11] = (Cobol85KWLexerexp.LIBPARAMETER);

        //
        // Rule 12:  Keyword ::= n o o p s e q u e n c e
        //
        keywordKind[12] = (Cobol85KWLexerexp.NOOPSEQUENCE);

        //
        // Rule 13:  Keyword ::= o r g a n i z a t i o n
        //
        keywordKind[13] = (Cobol85KWLexerexp.ORGANIZATION);

        //
        // Rule 14:  Keyword ::= s y n c h r o n i z e d
        //
        keywordKind[14] = (Cobol85KWLexerexp.SYNCHRONIZED);

        //
        // Rule 15:  Keyword ::= d e s t i n a t i o n
        //
        keywordKind[15] = (Cobol85KWLexerexp.DESTINATION);

        //
        // Rule 16:  Keyword ::= e n v i r o n m e n t
        //
        keywordKind[16] = (Cobol85KWLexerexp.ENVIRONMENT);

        //
        // Rule 17:  Keyword ::= n o d i a g t r u n c
        //
        keywordKind[17] = (Cobol85KWLexerexp.NODIAGTRUNC);

        //
        // Rule 18:  Keyword ::= n o e x p o r t a l l
        //
        keywordKind[18] = (Cobol85KWLexerexp.NOEXPORTALL);

        //
        // Rule 19:  Keyword ::= s h a r e d b y a l l
        //
        keywordKind[19] = (Cobol85KWLexerexp.SHAREDBYALL);

        //
        // Rule 20:  Keyword ::= a l p h a b e t i c
        //
        keywordKind[20] = (Cobol85KWLexerexp.ALPHABETIC);

        //
        // Rule 21:  Keyword ::= b y f u n c t i o n
        //
        keywordKind[21] = (Cobol85KWLexerexp.BYFUNCTION);

        //
        // Rule 22:  Keyword ::= c c s v e r s i o n
        //
        keywordKind[22] = (Cobol85KWLexerexp.CCSVERSION);

        //
        // Rule 23:  Keyword ::= c h a r a c t e r s
        //
        keywordKind[23] = (Cobol85KWLexerexp.CHARACTERS);

        //
        // Rule 24:  Keyword ::= c o m m i t m e n t
        //
        keywordKind[24] = (Cobol85KWLexerexp.COMMITMENT);

        //
        // Rule 25:  Keyword ::= c o n v e n t i o n
        //
        keywordKind[25] = (Cobol85KWLexerexp.CONVENTION);

        //
        // Rule 26:  Keyword ::= c o n v e r t i n g
        //
        keywordKind[26] = (Cobol85KWLexerexp.CONVERTING);

        //
        // Rule 27:  Keyword ::= d e f i n i t i o n
        //
        keywordKind[27] = (Cobol85KWLexerexp.DEFINITION);

        //
        // Rule 28:  Keyword ::= d e s c e n d i n g
        //
        keywordKind[28] = (Cobol85KWLexerexp.DESCENDING);

        //
        // Rule 29:  Keyword ::= d u p l i c a t e s
        //
        keywordKind[29] = (Cobol85KWLexerexp.DUPLICATES);

        //
        // Rule 30:  Keyword ::= i n i t i a l i z e
        //
        keywordKind[30] = (Cobol85KWLexerexp.INITIALIZE);

        //
        // Rule 31:  Keyword ::= n o c u r r e n c y
        //
        keywordKind[31] = (Cobol85KWLexerexp.NOCURRENCY);

        //
        // Rule 32:  Keyword ::= n o d a t e p r o c
        //
        keywordKind[32] = (Cobol85KWLexerexp.NODATEPROC);

        //
        // Rule 33:  Keyword ::= n o o p t i m i z e
        //
        keywordKind[33] = (Cobol85KWLexerexp.NOOPTIMIZE);

        //
        // Rule 34:  Keyword ::= n o s e p a r a t e
        //
        keywordKind[34] = (Cobol85KWLexerexp.NOSEPARATE);

        //
        // Rule 35:  Keyword ::= n o s e q u e n c e
        //
        keywordKind[35] = (Cobol85KWLexerexp.NOSEQUENCE);

        //
        // Rule 36:  Keyword ::= n o s q l c c s i d
        //
        keywordKind[36] = (Cobol85KWLexerexp.NOSQLCCSID);

        //
        // Rule 37:  Keyword ::= n o s t d t r u n c
        //
        keywordKind[37] = (Cobol85KWLexerexp.NOSTDTRUNC);

        //
        // Rule 38:  Keyword ::= n o t e r m i n a l
        //
        keywordKind[38] = (Cobol85KWLexerexp.NOTERMINAL);

        //
        // Rule 39:  Keyword ::= o p s e q u e n c e
        //
        keywordKind[39] = (Cobol85KWLexerexp.OPSEQUENCE);

        //
        // Rule 40:  Keyword ::= p r o c e d u r e s
        //
        keywordKind[40] = (Cobol85KWLexerexp.PROCEDURES);

        //
        // Rule 41:  Keyword ::= r e f e r e n c e s
        //
        keywordKind[41] = (Cobol85KWLexerexp.REFERENCES);

        //
        // Rule 42:  Keyword ::= s e q u e n t i a l
        //
        keywordKind[42] = (Cobol85KWLexerexp.SEQUENTIAL);

        //
        // Rule 43:  Keyword ::= y e a r w i n d o w
        //
        keywordKind[43] = (Cobol85KWLexerexp.YEARWINDOW);

        //
        // Rule 44:  Keyword ::= a d v a n c i n g
        //
        keywordKind[44] = (Cobol85KWLexerexp.ADVANCING);

        //
        // Rule 45:  Keyword ::= a l t e r n a t e
        //
        keywordKind[45] = (Cobol85KWLexerexp.ALTERNATE);

        //
        // Rule 46:  Keyword ::= a s c e n d i n g
        //
        keywordKind[46] = (Cobol85KWLexerexp.ASCENDING);

        //
        // Rule 47:  Keyword ::= a t t r i b u t e
        //
        keywordKind[47] = (Cobol85KWLexerexp.ATTRIBUTE);

        //
        // Rule 48:  Keyword ::= b e g i n n i n g
        //
        keywordKind[48] = (Cobol85KWLexerexp.BEGINNING);

        //
        // Rule 49:  Keyword ::= c h a r a c t e r
        //
        keywordKind[49] = (Cobol85KWLexerexp.CHARACTER);

        //
        // Rule 50:  Keyword ::= c o l l a t i n g
        //
        keywordKind[50] = (Cobol85KWLexerexp.COLLATING);

        //
        // Rule 51:  Keyword ::= d e b u g g i n g
        //
        keywordKind[51] = (Cobol85KWLexerexp.DEBUGGING);

        //
        // Rule 52:  Keyword ::= d e l i m i t e d
        //
        keywordKind[52] = (Cobol85KWLexerexp.DELIMITED);

        //
        // Rule 53:  Keyword ::= d e l i m i t e r
        //
        keywordKind[53] = (Cobol85KWLexerexp.DELIMITER);

        //
        // Rule 54:  Keyword ::= d e p e n d i n g
        //
        keywordKind[54] = (Cobol85KWLexerexp.DEPENDING);

        //
        // Rule 55:  Keyword ::= d i a g t r u n c
        //
        keywordKind[55] = (Cobol85KWLexerexp.DIAGTRUNC);

        //
        // Rule 56:  Keyword ::= e x c e p t i o n
        //
        keywordKind[56] = (Cobol85KWLexerexp.EXCEPTION);

        //
        // Rule 57:  Keyword ::= e x c l u s i v e
        //
        keywordKind[57] = (Cobol85KWLexerexp.EXCLUSIVE);

        //
        // Rule 58:  Keyword ::= e x p o r t a l l
        //
        keywordKind[58] = (Cobol85KWLexerexp.EXPORTALL);

        //
        // Rule 59:  Keyword ::= h i g h l i g h t
        //
        keywordKind[59] = (Cobol85KWLexerexp.HIGHLIGHT);

        //
        // Rule 60:  Keyword ::= j u s t i f i e d
        //
        keywordKind[60] = (Cobol85KWLexerexp.JUSTIFIED);

        //
        // Rule 61:  Keyword ::= l i b a c c e s s
        //
        keywordKind[61] = (Cobol85KWLexerexp.LIBACCESS);

        //
        // Rule 62:  Keyword ::= l i n e c o u n t
        //
        keywordKind[62] = (Cobol85KWLexerexp.LINECOUNT);

        //
        // Rule 63:  Keyword ::= l o n g m i x e d
        //
        keywordKind[63] = (Cobol85KWLexerexp.LONGMIXED);

        //
        // Rule 64:  Keyword ::= l o n g u p p e r
        //
        keywordKind[64] = (Cobol85KWLexerexp.LONGUPPER);

        //
        // Rule 65:  Keyword ::= n o c b l c a r d
        //
        keywordKind[65] = (Cobol85KWLexerexp.NOCBLCARD);

        //
        // Rule 66:  Keyword ::= n o c o m p i l e
        //
        keywordKind[66] = (Cobol85KWLexerexp.NOCOMPILE);

        //
        // Rule 67:  Keyword ::= n o f a s t s r t
        //
        keywordKind[67] = (Cobol85KWLexerexp.NOFASTSRT);

        //
        // Rule 68:  Keyword ::= n o f l a g m i g
        //
        keywordKind[68] = (Cobol85KWLexerexp.NOFLAGMIG);

        //
        // Rule 69:  Keyword ::= n o f l a g s t d
        //
        keywordKind[69] = (Cobol85KWLexerexp.NOFLAGSTD);

        //
        // Rule 70:  Keyword ::= n o g r a p h i c
        //
        keywordKind[70] = (Cobol85KWLexerexp.NOGRAPHIC);

        //
        // Rule 71:  Keyword ::= n o l i n k a g e
        //
        keywordKind[71] = (Cobol85KWLexerexp.NOLINKAGE);

        //
        // Rule 72:  Keyword ::= n o o p t i o n s
        //
        keywordKind[72] = (Cobol85KWLexerexp.NOOPTIONS);

        //
        // Rule 73:  Keyword ::= n o s s r a n g e
        //
        keywordKind[73] = (Cobol85KWLexerexp.NOSSRANGE);

        //
        // Rule 74:  Keyword ::= o p m a r g i n s
        //
        keywordKind[74] = (Cobol85KWLexerexp.OPMARGINS);

        //
        // Rule 75:  Keyword ::= p r o c e d u r e
        //
        keywordKind[75] = (Cobol85KWLexerexp.PROCEDURE);

        //
        // Rule 76:  Keyword ::= r e c o r d i n g
        //
        keywordKind[76] = (Cobol85KWLexerexp.RECORDING);

        //
        // Rule 77:  Keyword ::= r e c u r s i v e
        //
        keywordKind[77] = (Cobol85KWLexerexp.RECURSIVE);

        //
        // Rule 78:  Keyword ::= r e d e f i n e s
        //
        keywordKind[78] = (Cobol85KWLexerexp.REDEFINES);

        //
        // Rule 79:  Keyword ::= r e f e r e n c e
        //
        keywordKind[79] = (Cobol85KWLexerexp.REFERENCE);

        //
        // Rule 80:  Keyword ::= r e m a i n d e r
        //
        keywordKind[80] = (Cobol85KWLexerexp.REMAINDER);

        //
        // Rule 81:  Keyword ::= r e p l a c i n g
        //
        keywordKind[81] = (Cobol85KWLexerexp.REPLACING);

        //
        // Rule 82:  Keyword ::= r e p o r t i n g
        //
        keywordKind[82] = (Cobol85KWLexerexp.REPORTING);

        //
        // Rule 83:  Keyword ::= r e t u r n i n g
        //
        keywordKind[83] = (Cobol85KWLexerexp.RETURNING);

        //
        // Rule 84:  Keyword ::= t e r m i n a t e
        //
        keywordKind[84] = (Cobol85KWLexerexp.TERMINATE);

        //
        // Rule 85:  Keyword ::= t r u n c a t e d
        //
        keywordKind[85] = (Cobol85KWLexerexp.TRUNCATED);

        //
        // Rule 86:  Keyword ::= u n d e r l i n e
        //
        keywordKind[86] = (Cobol85KWLexerexp.UNDERLINE);

        //
        // Rule 87:  Keyword ::= a l p h a b e t
        //
        keywordKind[87] = (Cobol85KWLexerexp.ALPHABET);

        //
        // Rule 88:  Keyword ::= c h a i n i n g
        //
        keywordKind[88] = (Cobol85KWLexerexp.CHAINING);

        //
        // Rule 89:  Keyword ::= c o d e p a g e
        //
        keywordKind[89] = (Cobol85KWLexerexp.CODEPAGE);

        //
        // Rule 90:  Keyword ::= c o n t a i n s
        //
        keywordKind[90] = (Cobol85KWLexerexp.CONTAINS);

        //
        // Rule 91:  Keyword ::= c o n t i n u e
        //
        keywordKind[91] = (Cobol85KWLexerexp.CONTINUE);

        //
        // Rule 92:  Keyword ::= c o n t r o l s
        //
        keywordKind[92] = (Cobol85KWLexerexp.CONTROLS);

        //
        // Rule 93:  Keyword ::= c u r r e n c y
        //
        keywordKind[93] = (Cobol85KWLexerexp.CURRENCY);

        //
        // Rule 94:  Keyword ::= d a t e p r o c
        //
        keywordKind[94] = (Cobol85KWLexerexp.DATEPROC);

        //
        // Rule 95:  Keyword ::= d f h v a l u e
        //
        keywordKind[95] = (Cobol85KWLexerexp.DFHVALUE);

        //
        // Rule 96:  Keyword ::= d i v i s i o n
        //
        keywordKind[96] = (Cobol85KWLexerexp.DIVISION);

        //
        // Rule 97:  Keyword ::= d o n t c a r e
        //
        keywordKind[97] = (Cobol85KWLexerexp.DONTCARE);

        //
        // Rule 98:  Keyword ::= e v a l u a t e
        //
        keywordKind[98] = (Cobol85KWLexerexp.EVALUATE);

        //
        // Rule 99:  Keyword ::= e x t e n d e d
        //
        keywordKind[99] = (Cobol85KWLexerexp.EXTENDED);

        //
        // Rule 100:  Keyword ::= e x t e r n a l
        //
        keywordKind[100] = (Cobol85KWLexerexp.EXTERNAL);

        //
        // Rule 101:  Keyword ::= f u n c t i o n
        //
        keywordKind[101] = (Cobol85KWLexerexp.FUNCTION);

        //
        // Rule 102:  Keyword ::= g e n e r a t e
        //
        keywordKind[102] = (Cobol85KWLexerexp.GENERATE);

        //
        // Rule 103:  Keyword ::= i m p l i c i t
        //
        keywordKind[103] = (Cobol85KWLexerexp.IMPLICIT);

        //
        // Rule 104:  Keyword ::= i n d i c a t e
        //
        keywordKind[104] = (Cobol85KWLexerexp.INDICATE);

        //
        // Rule 105:  Keyword ::= i n i t i a t e
        //
        keywordKind[105] = (Cobol85KWLexerexp.INITIATE);

        //
        // Rule 106:  Keyword ::= k e y b o a r d
        //
        keywordKind[106] = (Cobol85KWLexerexp.KEYBOARD);

        //
        // Rule 107:  Keyword ::= l a n g u a g e
        //
        keywordKind[107] = (Cobol85KWLexerexp.LANGUAGE);

        //
        // Rule 108:  Keyword ::= l e f t l i n e
        //
        keywordKind[108] = (Cobol85KWLexerexp.LEFTLINE);

        //
        // Rule 109:  Keyword ::= l o w l i g h t
        //
        keywordKind[109] = (Cobol85KWLexerexp.LOWLIGHT);

        //
        // Rule 110:  Keyword ::= m m d d y y y y
        //
        keywordKind[110] = (Cobol85KWLexerexp.MMDDYYYY);

        //
        // Rule 111:  Keyword ::= m u l t i p l e
        //
        keywordKind[111] = (Cobol85KWLexerexp.MULTIPLE);

        //
        // Rule 112:  Keyword ::= m u l t i p l y
        //
        keywordKind[112] = (Cobol85KWLexerexp.MULTIPLY);

        //
        // Rule 113:  Keyword ::= n a t i o n a l
        //
        keywordKind[113] = (Cobol85KWLexerexp.NATIONAL);

        //
        // Rule 114:  Keyword ::= n e g a t i v e
        //
        keywordKind[114] = (Cobol85KWLexerexp.NEGATIVE);

        //
        // Rule 115:  Keyword ::= n o e p i l o g
        //
        keywordKind[115] = (Cobol85KWLexerexp.NOEPILOG);

        //
        // Rule 116:  Keyword ::= n o l e n g t h
        //
        keywordKind[116] = (Cobol85KWLexerexp.NOLENGTH);

        //
        // Rule 117:  Keyword ::= n o n u m b e r
        //
        keywordKind[117] = (Cobol85KWLexerexp.NONUMBER);

        //
        // Rule 118:  Keyword ::= n o o b j e c t
        //
        keywordKind[118] = (Cobol85KWLexerexp.NOOBJECT);

        //
        // Rule 119:  Keyword ::= n o o f f s e t
        //
        keywordKind[119] = (Cobol85KWLexerexp.NOOFFSET);

        //
        // Rule 120:  Keyword ::= n o p r o l o g
        //
        keywordKind[120] = (Cobol85KWLexerexp.NOPROLOG);

        //
        // Rule 121:  Keyword ::= n o s o u r c e
        //
        keywordKind[121] = (Cobol85KWLexerexp.NOSOURCE);

        //
        // Rule 122:  Keyword ::= n o t h r e a d
        //
        keywordKind[122] = (Cobol85KWLexerexp.NOTHREAD);

        //
        // Rule 123:  Keyword ::= o p t i m i z e
        //
        keywordKind[123] = (Cobol85KWLexerexp.OPTIMIZE);

        //
        // Rule 124:  Keyword ::= o p t i o n a l
        //
        keywordKind[124] = (Cobol85KWLexerexp.OPTIONAL);

        //
        // Rule 125:  Keyword ::= o v e r f l o w
        //
        keywordKind[125] = (Cobol85KWLexerexp.OVERFLOW);

        //
        // Rule 126:  Keyword ::= o v e r l i n e
        //
        keywordKind[126] = (Cobol85KWLexerexp.OVERLINE);

        //
        // Rule 127:  Keyword ::= p a s s w o r d
        //
        keywordKind[127] = (Cobol85KWLexerexp.PASSWORD);

        //
        // Rule 128:  Keyword ::= p o s i t i o n
        //
        keywordKind[128] = (Cobol85KWLexerexp.POSITION);

        //
        // Rule 129:  Keyword ::= p o s i t i v e
        //
        keywordKind[129] = (Cobol85KWLexerexp.POSITIVE);

        //
        // Rule 130:  Keyword ::= p r i n t i n g
        //
        keywordKind[130] = (Cobol85KWLexerexp.PRINTING);

        //
        // Rule 131:  Keyword ::= r e c e i v e d
        //
        keywordKind[131] = (Cobol85KWLexerexp.RECEIVED);

        //
        // Rule 132:  Keyword ::= r e l a t i v e
        //
        keywordKind[132] = (Cobol85KWLexerexp.RELATIVE);

        //
        // Rule 133:  Keyword ::= r e q u i r e d
        //
        keywordKind[133] = (Cobol85KWLexerexp.REQUIRED);

        //
        // Rule 134:  Keyword ::= r e v e r s e d
        //
        keywordKind[134] = (Cobol85KWLexerexp.REVERSED);

        //
        // Rule 135:  Keyword ::= s e c u r i t y
        //
        keywordKind[135] = (Cobol85KWLexerexp.SECURITY);

        //
        // Rule 136:  Keyword ::= s e n t e n c e
        //
        keywordKind[136] = (Cobol85KWLexerexp.SENTENCE);

        //
        // Rule 137:  Keyword ::= s e p a r a t e
        //
        keywordKind[137] = (Cobol85KWLexerexp.SEPARATE);

        //
        // Rule 138:  Keyword ::= s e q u e n c e
        //
        keywordKind[138] = (Cobol85KWLexerexp.SEQUENCE);

        //
        // Rule 139:  Keyword ::= s q l c c s i d
        //
        keywordKind[139] = (Cobol85KWLexerexp.SQLCCSID);

        //
        // Rule 140:  Keyword ::= s t a n d a r d
        //
        keywordKind[140] = (Cobol85KWLexerexp.STANDARD);

        //
        // Rule 141:  Keyword ::= s u b t r a c t
        //
        keywordKind[141] = (Cobol85KWLexerexp.SUBTRACT);

        //
        // Rule 142:  Keyword ::= s u p p r e s s
        //
        keywordKind[142] = (Cobol85KWLexerexp.SUPPRESS);

        //
        // Rule 143:  Keyword ::= s y m b o l i c
        //
        keywordKind[143] = (Cobol85KWLexerexp.SYMBOLIC);

        //
        // Rule 144:  Keyword ::= t a l l y i n g
        //
        keywordKind[144] = (Cobol85KWLexerexp.TALLYING);

        //
        // Rule 145:  Keyword ::= t e r m i n a l
        //
        keywordKind[145] = (Cobol85KWLexerexp.TERMINAL);

        //
        // Rule 146:  Keyword ::= t r a i l i n g
        //
        keywordKind[146] = (Cobol85KWLexerexp.TRAILING);

        //
        // Rule 147:  Keyword ::= u n s t r i n g
        //
        keywordKind[147] = (Cobol85KWLexerexp.UNSTRING);

        //
        // Rule 148:  Keyword ::= x m l p a r s e
        //
        keywordKind[148] = (Cobol85KWLexerexp.XMLPARSE);

        //
        // Rule 149:  Keyword ::= y y y y m m d d
        //
        keywordKind[149] = (Cobol85KWLexerexp.YYYYMMDD);

        //
        // Rule 150:  Keyword ::= a d d r e s s
        //
        keywordKind[150] = (Cobol85KWLexerexp.ADDRESS);

        //
        // Rule 151:  Keyword ::= a l i g n e d
        //
        keywordKind[151] = (Cobol85KWLexerexp.ALIGNED);

        //
        // Rule 152:  Keyword ::= b u f s i z e
        //
        keywordKind[152] = (Cobol85KWLexerexp.BUFSIZE);

        //
        // Rule 153:  Keyword ::= b y t i t l e
        //
        keywordKind[153] = (Cobol85KWLexerexp.BYTITLE);

        //
        // Rule 154:  Keyword ::= c a p a b l e
        //
        keywordKind[154] = (Cobol85KWLexerexp.CAPABLE);

        //
        // Rule 155:  Keyword ::= c b l c a r d
        //
        keywordKind[155] = (Cobol85KWLexerexp.CBLCARD);

        //
        // Rule 156:  Keyword ::= c h a n g e d
        //
        keywordKind[156] = (Cobol85KWLexerexp.CHANGED);

        //
        // Rule 157:  Keyword ::= c h a n n e l
        //
        keywordKind[157] = (Cobol85KWLexerexp.CHANNEL);

        //
        // Rule 158:  Keyword ::= c o m p i l e
        //
        keywordKind[158] = (Cobol85KWLexerexp.COMPILE);

        //
        // Rule 159:  Keyword ::= c o m p u t e
        //
        keywordKind[159] = (Cobol85KWLexerexp.COMPUTE);

        //
        // Rule 160:  Keyword ::= c o n t e n t
        //
        keywordKind[160] = (Cobol85KWLexerexp.CONTENT);

        //
        // Rule 161:  Keyword ::= c o n t r o l
        //
        keywordKind[161] = (Cobol85KWLexerexp.CONTROL);

        //
        // Rule 162:  Keyword ::= d e f a u l t
        //
        keywordKind[162] = (Cobol85KWLexerexp.DEFAULT);

        //
        // Rule 163:  Keyword ::= d f h r e s p
        //
        keywordKind[163] = (Cobol85KWLexerexp.DFHRESP);

        //
        // Rule 164:  Keyword ::= d i s a b l e
        //
        keywordKind[164] = (Cobol85KWLexerexp.DISABLE);

        //
        // Rule 165:  Keyword ::= d i s p l a y
        //
        keywordKind[165] = (Cobol85KWLexerexp.DISPLAY);

        //
        // Rule 166:  Keyword ::= d y n a m i c
        //
        keywordKind[166] = (Cobol85KWLexerexp.DYNAMIC);

        //
        // Rule 167:  Keyword ::= e n g l i s h
        //
        keywordKind[167] = (Cobol85KWLexerexp.ENGLISH);

        //
        // Rule 168:  Keyword ::= e x h i b i t
        //
        keywordKind[168] = (Cobol85KWLexerexp.EXHIBIT);

        //
        // Rule 169:  Keyword ::= f a s t s r t
        //
        keywordKind[169] = (Cobol85KWLexerexp.FASTSRT);

        //
        // Rule 170:  Keyword ::= f l a g s t d
        //
        keywordKind[170] = (Cobol85KWLexerexp.FLAGSTD);

        //
        // Rule 171:  Keyword ::= f o o t i n g
        //
        keywordKind[171] = (Cobol85KWLexerexp.FOOTING);

        //
        // Rule 172:  Keyword ::= g r a p h i c
        //
        keywordKind[172] = (Cobol85KWLexerexp.GRAPHIC);

        //
        // Rule 173:  Keyword ::= g r e a t e r
        //
        keywordKind[173] = (Cobol85KWLexerexp.GREATER);

        //
        // Rule 174:  Keyword ::= h e a d i n g
        //
        keywordKind[174] = (Cobol85KWLexerexp.HEADING);

        //
        // Rule 175:  Keyword ::= i n d e x e d
        //
        keywordKind[175] = (Cobol85KWLexerexp.INDEXED);

        //
        // Rule 176:  Keyword ::= i n i t i a l
        //
        keywordKind[176] = (Cobol85KWLexerexp.INITIAL);

        //
        // Rule 177:  Keyword ::= i n s p e c t
        //
        keywordKind[177] = (Cobol85KWLexerexp.INSPECT);

        //
        // Rule 178:  Keyword ::= i n t d a t e
        //
        keywordKind[178] = (Cobol85KWLexerexp.INTDATE);

        //
        // Rule 179:  Keyword ::= i n t e g e r
        //
        keywordKind[179] = (Cobol85KWLexerexp.INTEGER);

        //
        // Rule 180:  Keyword ::= i n v a l i d
        //
        keywordKind[180] = (Cobol85KWLexerexp.INVALID);

        //
        // Rule 181:  Keyword ::= l e a d i n g
        //
        keywordKind[181] = (Cobol85KWLexerexp.LEADING);

        //
        // Rule 182:  Keyword ::= l i b r a r y
        //
        keywordKind[182] = (Cobol85KWLexerexp.LIBRARY);

        //
        // Rule 183:  Keyword ::= l i n k a g e
        //
        keywordKind[183] = (Cobol85KWLexerexp.LINKAGE);

        //
        // Rule 184:  Keyword ::= m a r g i n s
        //
        keywordKind[184] = (Cobol85KWLexerexp.MARGINS);

        //
        // Rule 185:  Keyword ::= m e s s a g e
        //
        keywordKind[185] = (Cobol85KWLexerexp.MESSAGE);

        //
        // Rule 186:  Keyword ::= m o d u l e s
        //
        keywordKind[186] = (Cobol85KWLexerexp.MODULES);

        //
        // Rule 187:  Keyword ::= n a t l a n g
        //
        keywordKind[187] = (Cobol85KWLexerexp.NATLANG);

        //
        // Rule 188:  Keyword ::= n e t w o r k
        //
        keywordKind[188] = (Cobol85KWLexerexp.NETWORK);

        //
        // Rule 189:  Keyword ::= n o a d a t a
        //
        keywordKind[189] = (Cobol85KWLexerexp.NOADATA);

        //
        // Rule 190:  Keyword ::= n o a l i a s
        //
        keywordKind[190] = (Cobol85KWLexerexp.NOALIAS);

        //
        // Rule 191:  Keyword ::= n o d e b u g
        //
        keywordKind[191] = (Cobol85KWLexerexp.NODEBUG);

        //
        // Rule 192:  Keyword ::= n o d y n a m
        //
        keywordKind[192] = (Cobol85KWLexerexp.NODYNAM);

        //
        // Rule 193:  Keyword ::= n o m d e c k
        //
        keywordKind[193] = (Cobol85KWLexerexp.NOMDECK);

        //
        // Rule 194:  Keyword ::= n o v b r e f
        //
        keywordKind[194] = (Cobol85KWLexerexp.NOVBREF);

        //
        // Rule 195:  Keyword ::= n s y m b o l
        //
        keywordKind[195] = (Cobol85KWLexerexp.NSYMBOL);

        //
        // Rule 196:  Keyword ::= n u m e r i c
        //
        keywordKind[196] = (Cobol85KWLexerexp.NUMERIC);

        //
        // Rule 197:  Keyword ::= n u m p r o c
        //
        keywordKind[197] = (Cobol85KWLexerexp.NUMPROC);

        //
        // Rule 198:  Keyword ::= o m i t t e d
        //
        keywordKind[198] = (Cobol85KWLexerexp.OMITTED);

        //
        // Rule 199:  Keyword ::= o p t f i l e
        //
        keywordKind[199] = (Cobol85KWLexerexp.OPTFILE);

        //
        // Rule 200:  Keyword ::= o p t i o n s
        //
        keywordKind[200] = (Cobol85KWLexerexp.OPTIONS);

        //
        // Rule 201:  Keyword ::= o r d e r l y
        //
        keywordKind[201] = (Cobol85KWLexerexp.ORDERLY);

        //
        // Rule 202:  Keyword ::= p a d d i n g
        //
        keywordKind[202] = (Cobol85KWLexerexp.PADDING);

        //
        // Rule 203:  Keyword ::= p e r f o r m
        //
        keywordKind[203] = (Cobol85KWLexerexp.PERFORM);

        //
        // Rule 204:  Keyword ::= p g m n a m e
        //
        keywordKind[204] = (Cobol85KWLexerexp.PGMNAME);

        //
        // Rule 205:  Keyword ::= p i c t u r e
        //
        keywordKind[205] = (Cobol85KWLexerexp.PICTURE);

        //
        // Rule 206:  Keyword ::= p o i n t e r
        //
        keywordKind[206] = (Cobol85KWLexerexp.POINTER);

        //
        // Rule 207:  Keyword ::= p r i n t e r
        //
        keywordKind[207] = (Cobol85KWLexerexp.PRINTER);

        //
        // Rule 208:  Keyword ::= p r i v a t e
        //
        keywordKind[208] = (Cobol85KWLexerexp.PRIVATE);

        //
        // Rule 209:  Keyword ::= p r o c e e d
        //
        keywordKind[209] = (Cobol85KWLexerexp.PROCEED);

        //
        // Rule 210:  Keyword ::= p r o c e s s
        //
        keywordKind[210] = (Cobol85KWLexerexp.PROCESS);

        //
        // Rule 211:  Keyword ::= w o r k i n g Minus s t o r a g e
        //
        keywordKind[211] = (Cobol85KWLexerexp.WORKING_STORAGE);

        //
        // Rule 212:  Keyword ::= p r o g r a m Minus i d
        //
        keywordKind[212] = (Cobol85KWLexerexp.PROGRAM_ID);

        //
        // Rule 213:  Keyword ::= p r o g r a m
        //
        keywordKind[213] = (Cobol85KWLexerexp.PROGRAM);

        //
        // Rule 214:  Keyword ::= r e c e i v e
        //
        keywordKind[214] = (Cobol85KWLexerexp.RECEIVE);

        //
        // Rule 215:  Keyword ::= r e c o r d s
        //
        keywordKind[215] = (Cobol85KWLexerexp.RECORDS);

        //
        // Rule 216:  Keyword ::= r e l e a s e
        //
        keywordKind[216] = (Cobol85KWLexerexp.RELEASE);

        //
        // Rule 217:  Keyword ::= r e m a r k s
        //
        keywordKind[217] = (Cobol85KWLexerexp.REMARKS);

        //
        // Rule 218:  Keyword ::= r e m o v a l
        //
        keywordKind[218] = (Cobol85KWLexerexp.REMOVAL);

        //
        // Rule 219:  Keyword ::= r e n a m e s
        //
        keywordKind[219] = (Cobol85KWLexerexp.RENAMES);

        //
        // Rule 220:  Keyword ::= r e p l a c e
        //
        keywordKind[220] = (Cobol85KWLexerexp.REPLACE);

        //
        // Rule 221:  Keyword ::= r e p o r t s
        //
        keywordKind[221] = (Cobol85KWLexerexp.REPORTS);

        //
        // Rule 222:  Keyword ::= r e s e r v e
        //
        keywordKind[222] = (Cobol85KWLexerexp.RESERVE);

        //
        // Rule 223:  Keyword ::= r e w r i t e
        //
        keywordKind[223] = (Cobol85KWLexerexp.REWRITE);

        //
        // Rule 224:  Keyword ::= r o u n d e d
        //
        keywordKind[224] = (Cobol85KWLexerexp.ROUNDED);

        //
        // Rule 225:  Keyword ::= s e c t i o n
        //
        keywordKind[225] = (Cobol85KWLexerexp.SECTION);

        //
        // Rule 226:  Keyword ::= s e g m e n t
        //
        keywordKind[226] = (Cobol85KWLexerexp.SEGMENT);

        //
        // Rule 227:  Keyword ::= s h a r i n g
        //
        keywordKind[227] = (Cobol85KWLexerexp.SHARING);

        //
        // Rule 228:  Keyword ::= s s r a n g e
        //
        keywordKind[228] = (Cobol85KWLexerexp.SSRANGE);

        //
        // Rule 229:  Keyword ::= t h r o u g h
        //
        keywordKind[229] = (Cobol85KWLexerexp.THROUGH);

        //
        // Rule 230:  Keyword ::= t y p e d e f
        //
        keywordKind[230] = (Cobol85KWLexerexp.TYPEDEF);

        //
        // Rule 231:  Keyword ::= v a r y i n g
        //
        keywordKind[231] = (Cobol85KWLexerexp.VARYING);

        //
        // Rule 232:  Keyword ::= v i r t u a l
        //
        keywordKind[232] = (Cobol85KWLexerexp.VIRTUAL);

        //
        // Rule 233:  Keyword ::= y y y y d d d
        //
        keywordKind[233] = (Cobol85KWLexerexp.YYYYDDD);

        //
        // Rule 234:  Keyword ::= a c c e p t
        //
        keywordKind[234] = (Cobol85KWLexerexp.ACCEPT);

        //
        // Rule 235:  Keyword ::= a c c e s s
        //
        keywordKind[235] = (Cobol85KWLexerexp.ACCESS);

        //
        // Rule 236:  Keyword ::= a s s i g n
        //
        keywordKind[236] = (Cobol85KWLexerexp.ASSIGN);

        //
        // Rule 237:  Keyword ::= a u t h o r
        //
        keywordKind[237] = (Cobol85KWLexerexp.AUTHOR);

        //
        // Rule 238:  Keyword ::= b e f o r e
        //
        keywordKind[238] = (Cobol85KWLexerexp.BEFORE);

        //
        // Rule 239:  Keyword ::= b i n a r y
        //
        keywordKind[239] = (Cobol85KWLexerexp.BINARY);

        //
        // Rule 240:  Keyword ::= b o t t o m
        //
        keywordKind[240] = (Cobol85KWLexerexp.BOTTOM);

        //
        // Rule 241:  Keyword ::= b o u n d s
        //
        keywordKind[241] = (Cobol85KWLexerexp.BOUNDS);

        //
        // Rule 242:  Keyword ::= c a n c e l
        //
        keywordKind[242] = (Cobol85KWLexerexp.CANCEL);

        //
        // Rule 243:  Keyword ::= c o l u m n
        //
        keywordKind[243] = (Cobol85KWLexerexp.COLUMN);

        //
        // Rule 244:  Keyword ::= c o m m o n
        //
        keywordKind[244] = (Cobol85KWLexerexp.COMMON);

        //
        // Rule 245:  Keyword ::= c o m p a t
        //
        keywordKind[245] = (Cobol85KWLexerexp.COMPAT);

        //
        // Rule 246:  Keyword ::= c r u n c h
        //
        keywordKind[246] = (Cobol85KWLexerexp.CRUNCH);

        //
        // Rule 247:  Keyword ::= c u r s o r
        //
        keywordKind[247] = (Cobol85KWLexerexp.CURSOR);

        //
        // Rule 248:  Keyword ::= d e l e t e
        //
        keywordKind[248] = (Cobol85KWLexerexp.DELETE);

        //
        // Rule 249:  Keyword ::= d e t a i l
        //
        keywordKind[249] = (Cobol85KWLexerexp.DETAIL);

        //
        // Rule 250:  Keyword ::= d i v i d e
        //
        keywordKind[250] = (Cobol85KWLexerexp.DIVIDE);

        //
        // Rule 251:  Keyword ::= d o u b l e
        //
        keywordKind[251] = (Cobol85KWLexerexp.DOUBLE);

        //
        // Rule 252:  Keyword ::= e b c d i c
        //
        keywordKind[252] = (Cobol85KWLexerexp.EBCDIC);

        //
        // Rule 253:  Keyword ::= e n a b l e
        //
        keywordKind[253] = (Cobol85KWLexerexp.ENABLE);

        //
        // Rule 254:  Keyword ::= e n d i n f
        //
        keywordKind[254] = (Cobol85KWLexerexp.ENDING);

        //
        // Rule 255:  Keyword ::= e p i l o g
        //
        keywordKind[255] = (Cobol85KWLexerexp.EPILOG);

        //
        // Rule 256:  Keyword ::= e s c a p e
        //
        keywordKind[256] = (Cobol85KWLexerexp.ESCAPE);

        //
        // Rule 257:  Keyword ::= e x p o r t
        //
        keywordKind[257] = (Cobol85KWLexerexp.EXPORT);

        //
        // Rule 258:  Keyword ::= e x t e n d
        //
        keywordKind[258] = (Cobol85KWLexerexp.EXTEND);

        //
        // Rule 259:  Keyword ::= f i l l e r
        //
        keywordKind[259] = (Cobol85KWLexerexp.FILLER);

        //
        // Rule 260:  Keyword ::= g i v i n g
        //
        keywordKind[260] = (Cobol85KWLexerexp.GIVING);

        //
        // Rule 261:  Keyword ::= g l o b a l
        //
        keywordKind[261] = (Cobol85KWLexerexp.GLOBAL);

        //
        // Rule 262:  Keyword ::= g o b a c k
        //
        keywordKind[262] = (Cobol85KWLexerexp.GOBACK);

        //
        // Rule 263:  Keyword ::= i m p o r t
        //
        keywordKind[263] = (Cobol85KWLexerexp.IMPORT);

        //
        // Rule 264:  Keyword ::= i n v o k e
        //
        keywordKind[264] = (Cobol85KWLexerexp.INVOKE);

        //
        // Rule 265:  Keyword ::= l e n g t h
        //
        keywordKind[265] = (Cobol85KWLexerexp.LENGTH);

        //
        // Rule 266:  Keyword ::= l i l i a n
        //
        keywordKind[266] = (Cobol85KWLexerexp.LILIAN);

        //
        // Rule 267:  Keyword ::= l i m i t s
        //
        keywordKind[267] = (Cobol85KWLexerexp.LIMITS);

        //
        // Rule 268:  Keyword ::= l i n a g e
        //
        keywordKind[268] = (Cobol85KWLexerexp.LINAGE);

        //
        // Rule 269:  Keyword ::= m e m o r y
        //
        keywordKind[269] = (Cobol85KWLexerexp.MEMORY);

        //
        // Rule 270:  Keyword ::= n a t i v e
        //
        keywordKind[270] = (Cobol85KWLexerexp.NATIVE);

        //
        // Rule 271:  Keyword ::= n o c i c s
        //
        keywordKind[271] = (Cobol85KWLexerexp.NOCICS);

        //
        // Rule 272:  Keyword ::= n o c p s m
        //
        keywordKind[272] = (Cobol85KWLexerexp.NOCPSM);

        //
        // Rule 273:  Keyword ::= n o c u r r
        //
        keywordKind[273] = (Cobol85KWLexerexp.NOCURR);

        //
        // Rule 274:  Keyword ::= n o d b c s
        //
        keywordKind[274] = (Cobol85KWLexerexp.NODBCS);

        //
        // Rule 275:  Keyword ::= n o d e c k
        //
        keywordKind[275] = (Cobol85KWLexerexp.NODECK);

        //
        // Rule 276:  Keyword ::= n o d u m p
        //
        keywordKind[276] = (Cobol85KWLexerexp.NODUMP);

        //
        // Rule 277:  Keyword ::= n o e j p d
        //
        keywordKind[277] = (Cobol85KWLexerexp.NOEJPD);

        //
        // Rule 278:  Keyword ::= n o e x i t
        //
        keywordKind[278] = (Cobol85KWLexerexp.NOEXIT);

        //
        // Rule 279:  Keyword ::= n o f e p i
        //
        keywordKind[279] = (Cobol85KWLexerexp.NOFEPI);

        //
        // Rule 280:  Keyword ::= n o f l a g
        //
        keywordKind[280] = (Cobol85KWLexerexp.NOFLAG);

        //
        // Rule 281:  Keyword ::= n o f s r t
        //
        keywordKind[281] = (Cobol85KWLexerexp.NOFSRT);

        //
        // Rule 282:  Keyword ::= n o h o o k
        //
        keywordKind[282] = (Cobol85KWLexerexp.NOHOOK);

        //
        // Rule 283:  Keyword ::= n o l i s t
        //
        keywordKind[283] = (Cobol85KWLexerexp.NOLIST);

        //
        // Rule 284:  Keyword ::= n o n a m e
        //
        keywordKind[284] = (Cobol85KWLexerexp.NONAME);

        //
        // Rule 285:  Keyword ::= n o r e n t
        //
        keywordKind[285] = (Cobol85KWLexerexp.NORENT);

        //
        // Rule 286:  Keyword ::= n o s p i e
        //
        keywordKind[286] = (Cobol85KWLexerexp.NOSPIE);

        //
        // Rule 287:  Keyword ::= n o s q l c
        //
        keywordKind[287] = (Cobol85KWLexerexp.NOSQLC);

        //
        // Rule 288:  Keyword ::= n o t e r m
        //
        keywordKind[288] = (Cobol85KWLexerexp.NOTERM);

        //
        // Rule 289:  Keyword ::= n o t e s t
        //
        keywordKind[289] = (Cobol85KWLexerexp.NOTEST);

        //
        // Rule 290:  Keyword ::= n o t r i g
        //
        keywordKind[290] = (Cobol85KWLexerexp.NOTRIG);

        //
        // Rule 291:  Keyword ::= n o w o r d
        //
        keywordKind[291] = (Cobol85KWLexerexp.NOWORD);

        //
        // Rule 292:  Keyword ::= n o x r e f
        //
        keywordKind[292] = (Cobol85KWLexerexp.NOXREF);

        //
        // Rule 293:  Keyword ::= n u m b e r
        //
        keywordKind[293] = (Cobol85KWLexerexp.NUMBER);

        //
        // Rule 294:  Keyword ::= o b j e c t
        //
        keywordKind[294] = (Cobol85KWLexerexp.OBJECT);

        //
        // Rule 295:  Keyword ::= o c c u r s
        //
        keywordKind[295] = (Cobol85KWLexerexp.OCCURS);

        //
        // Rule 296:  Keyword ::= o f f s e t
        //
        keywordKind[296] = (Cobol85KWLexerexp.OFFSET);

        //
        // Rule 297:  Keyword ::= o u t p u t
        //
        keywordKind[297] = (Cobol85KWLexerexp.OUTPUT);

        //
        // Rule 298:  Keyword ::= p p t d b g
        //
        keywordKind[298] = (Cobol85KWLexerexp.PPTDBG);

        //
        // Rule 299:  Keyword ::= p r o l o g
        //
        keywordKind[299] = (Cobol85KWLexerexp.PROLOG);

        //
        // Rule 300:  Keyword ::= p r o m p t
        //
        keywordKind[300] = (Cobol85KWLexerexp.PROMPT);

        //
        // Rule 301:  Keyword ::= q u o t e s
        //
        keywordKind[301] = (Cobol85KWLexerexp.QUOTES);

        //
        // Rule 302:  Keyword ::= r a n d o m
        //
        keywordKind[302] = (Cobol85KWLexerexp.RANDOM);

        //
        // Rule 303:  Keyword ::= r e a d e r
        //
        keywordKind[303] = (Cobol85KWLexerexp.READER);

        //
        // Rule 304:  Keyword ::= r e c o r d
        //
        keywordKind[304] = (Cobol85KWLexerexp.RECORD);

        //
        // Rule 305:  Keyword ::= r e m o t e
        //
        keywordKind[305] = (Cobol85KWLexerexp.REMOTE);

        //
        // Rule 306:  Keyword ::= r e m o v e
        //
        keywordKind[306] = (Cobol85KWLexerexp.REMOVE);

        //
        // Rule 307:  Keyword ::= r e p o r t
        //
        keywordKind[307] = (Cobol85KWLexerexp.REPORT);

        //
        // Rule 308:  Keyword ::= r e t u r n
        //
        keywordKind[308] = (Cobol85KWLexerexp.RETURN);

        //
        // Rule 309:  Keyword ::= r e w i n d
        //
        keywordKind[309] = (Cobol85KWLexerexp.REWIND);

        //
        // Rule 310:  Keyword ::= s c r e e n
        //
        keywordKind[310] = (Cobol85KWLexerexp.SCREEN);

        //
        // Rule 311:  Keyword ::= s e a r c h
        //
        keywordKind[311] = (Cobol85KWLexerexp.SEARCH);

        //
        // Rule 312:  Keyword ::= s e c u r e
        //
        keywordKind[312] = (Cobol85KWLexerexp.SECURE);

        //
        // Rule 313:  Keyword ::= s e l e c t
        //
        keywordKind[313] = (Cobol85KWLexerexp.SELECT);

        //
        // Rule 314:  Keyword ::= s h a r e d
        //
        keywordKind[314] = (Cobol85KWLexerexp.SHARED);

        //
        // Rule 315:  Keyword ::= s o u r c e
        //
        keywordKind[315] = (Cobol85KWLexerexp.SOURCE);

        //
        // Rule 316:  Keyword ::= s p a c e s
        //
        keywordKind[316] = (Cobol85KWLexerexp.SPACES);

        //
        // Rule 317:  Keyword ::= s q l i m s
        //
        keywordKind[317] = (Cobol85KWLexerexp.SQLIMS);

        //
        // Rule 318:  Keyword ::= s t a t u s
        //
        keywordKind[318] = (Cobol85KWLexerexp.STATUS);

        //
        // Rule 319:  Keyword ::= s t r i n g
        //
        keywordKind[319] = (Cobol85KWLexerexp.STRING);

        //
        // Rule 320:  Keyword ::= s y m b o l
        //
        keywordKind[320] = (Cobol85KWLexerexp.SYMBOL);

        //
        // Rule 321:  Keyword ::= s y s e i b
        //
        keywordKind[321] = (Cobol85KWLexerexp.SYSEIB);

        //
        // Rule 322:  Keyword ::= t h r e a d
        //
        keywordKind[322] = (Cobol85KWLexerexp.THREAD);

        //
        // Rule 323:  Keyword ::= v a l u e s
        //
        keywordKind[323] = (Cobol85KWLexerexp.VALUES);

        //
        // Rule 324:  Keyword ::= z e r o e s
        //
        keywordKind[324] = (Cobol85KWLexerexp.ZEROES);

        //
        // Rule 325:  Keyword ::= a b o r t
        //
        keywordKind[325] = (Cobol85KWLexerexp.ABORT);

        //
        // Rule 326:  Keyword ::= a d a t a
        //
        keywordKind[326] = (Cobol85KWLexerexp.ADATA);

        //
        // Rule 327:  Keyword ::= a f t e r
        //
        keywordKind[327] = (Cobol85KWLexerexp.AFTER);

        //
        // Rule 328:  Keyword ::= a l i a s
        //
        keywordKind[328] = (Cobol85KWLexerexp.ALIAS);

        //
        // Rule 329:  Keyword ::= a l t e r
        //
        keywordKind[329] = (Cobol85KWLexerexp.ALTER);

        //
        // Rule 330:  Keyword ::= a p o s t
        //
        keywordKind[330] = (Cobol85KWLexerexp.APOST);

        //
        // Rule 331:  Keyword ::= a r e a s
        //
        keywordKind[331] = (Cobol85KWLexerexp.AREAS);

        //
        // Rule 332:  Keyword ::= a r i t h
        //
        keywordKind[332] = (Cobol85KWLexerexp.ARITH);

        //
        // Rule 333:  Keyword ::= a s c i i
        //
        keywordKind[333] = (Cobol85KWLexerexp.ASCII);

        //
        // Rule 334:  Keyword ::= b a s i s
        //
        keywordKind[334] = (Cobol85KWLexerexp.BASIS);

        //
        // Rule 335:  Keyword ::= b l a n k
        //
        keywordKind[335] = (Cobol85KWLexerexp.BLANK);

        //
        // Rule 336:  Keyword ::= b l i n k
        //
        keywordKind[336] = (Cobol85KWLexerexp.BLINK);

        //
        // Rule 337:  Keyword ::= b l o c k
        //
        keywordKind[337] = (Cobol85KWLexerexp.BLOCK);

        //
        // Rule 338:  Keyword ::= c l a s s
        //
        keywordKind[338] = (Cobol85KWLexerexp.CLASS);

        //
        // Rule 339:  Keyword ::= c l o s e
        //
        keywordKind[339] = (Cobol85KWLexerexp.CLOSE);

        //
        // Rule 340:  Keyword ::= c o b o l
        //
        keywordKind[340] = (Cobol85KWLexerexp.COBOL);

        //
        // Rule 341:  Keyword ::= c o m m a
        //
        keywordKind[341] = (Cobol85KWLexerexp.COMMA);

        //
        // Rule 342:  Keyword ::= c o u n t
        //
        keywordKind[342] = (Cobol85KWLexerexp.COUNT);

        //
        // Rule 343:  Keyword ::= d e b u g
        //
        keywordKind[343] = (Cobol85KWLexerexp.DEBUG);

        //
        // Rule 344:  Keyword ::= d y n a m
        //
        keywordKind[344] = (Cobol85KWLexerexp.DYNAM);

        //
        // Rule 345:  Keyword ::= e j e c t
        //
        keywordKind[345] = (Cobol85KWLexerexp.EJECT);

        //
        // Rule 346:  Keyword ::= e n t e r
        //
        keywordKind[346] = (Cobol85KWLexerexp.ENTER);

        //
        // Rule 347:  Keyword ::= e n t r y
        //
        keywordKind[347] = (Cobol85KWLexerexp.ENTRY);

        //
        // Rule 348:  Keyword ::= e q u a l
        //
        keywordKind[348] = (Cobol85KWLexerexp.EQUAL);

        //
        // Rule 349:  Keyword ::= e r a s e
        //
        keywordKind[349] = (Cobol85KWLexerexp.ERASE);

        //
        // Rule 350:  Keyword ::= e r r o r
        //
        keywordKind[350] = (Cobol85KWLexerexp.ERROR);

        //
        // Rule 351:  Keyword ::= e v e n t
        //
        keywordKind[351] = (Cobol85KWLexerexp.EVENT);

        //
        // Rule 352:  Keyword ::= e v e r y
        //
        keywordKind[352] = (Cobol85KWLexerexp.EVERY);

        //
        // Rule 353:  Keyword ::= f a l s e
        //
        keywordKind[353] = (Cobol85KWLexerexp.FALSE);

        //
        // Rule 354:  Keyword ::= f i n a l
        //
        keywordKind[354] = (Cobol85KWLexerexp.FINAL);

        //
        // Rule 355:  Keyword ::= f i r s t
        //
        keywordKind[355] = (Cobol85KWLexerexp.FIRST);

        //
        // Rule 356:  Keyword ::= g r o u p
        //
        keywordKind[356] = (Cobol85KWLexerexp.GROUP);

        //
        // Rule 357:  Keyword ::= i n d e x
        //
        keywordKind[357] = (Cobol85KWLexerexp.INDEX);

        //
        // Rule 358:  Keyword ::= i n p u t
        //
        keywordKind[358] = (Cobol85KWLexerexp.INPUT);

        //
        // Rule 359:  Keyword ::= k a n j i
        //
        keywordKind[359] = (Cobol85KWLexerexp.KANJI);

        //
        // Rule 360:  Keyword ::= l a b e l
        //
        keywordKind[360] = (Cobol85KWLexerexp.LABEL);

        //
        // Rule 361:  Keyword ::= l e a s m
        //
        keywordKind[361] = (Cobol85KWLexerexp.LEASM);

        //
        // Rule 362:  Keyword ::= l i m i t
        //
        keywordKind[362] = (Cobol85KWLexerexp.LIMIT);

        //
        // Rule 363:  Keyword ::= l i n e s
        //
        keywordKind[363] = (Cobol85KWLexerexp.LINES);

        //
        // Rule 364:  Keyword ::= l o c a l
        //
        keywordKind[364] = (Cobol85KWLexerexp.LOCAL);

        //
        // Rule 365:  Keyword ::= l o w e r
        //
        keywordKind[365] = (Cobol85KWLexerexp.LOWER);

        //
        // Rule 366:  Keyword ::= m d e c k
        //
        keywordKind[366] = (Cobol85KWLexerexp.MDECK);

        //
        // Rule 367:  Keyword ::= m e r g e
        //
        keywordKind[367] = (Cobol85KWLexerexp.MERGE);

        //
        // Rule 368:  Keyword ::= m i x e d
        //
        keywordKind[368] = (Cobol85KWLexerexp.MIXED);

        //
        // Rule 369:  Keyword ::= n a m e d
        //
        keywordKind[369] = (Cobol85KWLexerexp.NAMED);

        //
        // Rule 370:  Keyword ::= n o a d v
        //
        keywordKind[370] = (Cobol85KWLexerexp.NOADV);

        //
        // Rule 371:  Keyword ::= n o a w o
        //
        keywordKind[371] = (Cobol85KWLexerexp.NOAWO);

        //
        // Rule 372:  Keyword ::= n o d l l
        //
        keywordKind[372] = (Cobol85KWLexerexp.NODLL);

        //
        // Rule 373:  Keyword ::= n o d t r
        //
        keywordKind[373] = (Cobol85KWLexerexp.NODTR);

        //
        // Rule 374:  Keyword ::= n o d y n
        //
        keywordKind[374] = (Cobol85KWLexerexp.NODYN);

        //
        // Rule 375:  Keyword ::= n o e d f
        //
        keywordKind[375] = (Cobol85KWLexerexp.NOEDF);

        //
        // Rule 376:  Keyword ::= n o e x p
        //
        keywordKind[376] = (Cobol85KWLexerexp.NOEXP);

        //
        // Rule 377:  Keyword ::= n o l i b
        //
        keywordKind[377] = (Cobol85KWLexerexp.NOLIB);

        //
        // Rule 378:  Keyword ::= n o m a p
        //
        keywordKind[378] = (Cobol85KWLexerexp.NOMAP);

        //
        // Rule 379:  Keyword ::= n o n u m
        //
        keywordKind[379] = (Cobol85KWLexerexp.NONUM);

        //
        // Rule 380:  Keyword ::= n o o b j
        //
        keywordKind[380] = (Cobol85KWLexerexp.NOOBJ);

        //
        // Rule 381:  Keyword ::= n o o f f
        //
        keywordKind[381] = (Cobol85KWLexerexp.NOOFF);

        //
        // Rule 382:  Keyword ::= n o o p t
        //
        keywordKind[382] = (Cobol85KWLexerexp.NOOPT);

        //
        // Rule 383:  Keyword ::= n o p f d
        //
        keywordKind[383] = (Cobol85KWLexerexp.NOPFD);

        //
        // Rule 384:  Keyword ::= n o s e p
        //
        keywordKind[384] = (Cobol85KWLexerexp.NOSEP);

        //
        // Rule 385:  Keyword ::= n o s e q
        //
        keywordKind[385] = (Cobol85KWLexerexp.NOSEQ);

        //
        // Rule 386:  Keyword ::= n o s q l
        //
        keywordKind[386] = (Cobol85KWLexerexp.NOSQL);

        //
        // Rule 387:  Keyword ::= n o s s r
        //
        keywordKind[387] = (Cobol85KWLexerexp.NOSSR);

        //
        // Rule 388:  Keyword ::= n o z w b
        //
        keywordKind[388] = (Cobol85KWLexerexp.NOZWB);

        //
        // Rule 389:  Keyword ::= n u l l s
        //
        keywordKind[389] = (Cobol85KWLexerexp.NULLS);

        //
        // Rule 390:  Keyword ::= o r d e r
        //
        keywordKind[390] = (Cobol85KWLexerexp.ORDER);

        //
        // Rule 391:  Keyword ::= o t h e r
        //
        keywordKind[391] = (Cobol85KWLexerexp.OTHER);

        //
        // Rule 392:  Keyword ::= o u t d d
        //
        keywordKind[392] = (Cobol85KWLexerexp.OUTDD);

        //
        // Rule 393:  Keyword ::= p u r g e
        //
        keywordKind[393] = (Cobol85KWLexerexp.PURGE);

        //
        // Rule 394:  Keyword ::= q u e u e
        //
        keywordKind[394] = (Cobol85KWLexerexp.QUEUE);

        //
        // Rule 395:  Keyword ::= q u o t e
        //
        keywordKind[395] = (Cobol85KWLexerexp.QUOTE);

        //
        // Rule 396:  Keyword ::= r e r u n
        //
        keywordKind[396] = (Cobol85KWLexerexp.RERUN);

        //
        // Rule 397:  Keyword ::= r e s e t
        //
        keywordKind[397] = (Cobol85KWLexerexp.RESET);

        //
        // Rule 398:  Keyword ::= r i g h t
        //
        keywordKind[398] = (Cobol85KWLexerexp.RIGHT);

        //
        // Rule 399:  Keyword ::= r m o d e
        //
        keywordKind[399] = (Cobol85KWLexerexp.RMODE);

        //
        // Rule 400:  Keyword ::= s h o r t
        //
        keywordKind[400] = (Cobol85KWLexerexp.SHORT);

        //
        // Rule 401:  Keyword ::= s p a c e
        //
        keywordKind[401] = (Cobol85KWLexerexp.SPACE);

        //
        // Rule 402:  Keyword ::= s t a r t
        //
        keywordKind[402] = (Cobol85KWLexerexp.START);

        //
        // Rule 403:  Keyword ::= t a b l e
        //
        keywordKind[403] = (Cobol85KWLexerexp.TABLE);

        //
        // Rule 404:  Keyword ::= t a l l y
        //
        keywordKind[404] = (Cobol85KWLexerexp.TALLY);

        //
        // Rule 405:  Keyword ::= t i m e r
        //
        keywordKind[405] = (Cobol85KWLexerexp.TIMER);

        //
        // Rule 406:  Keyword ::= t i m e s
        //
        keywordKind[406] = (Cobol85KWLexerexp.TIMES);

        //
        // Rule 407:  Keyword ::= t i t l e
        //
        keywordKind[407] = (Cobol85KWLexerexp.TITLE);

        //
        // Rule 408:  Keyword ::= t r u n c
        //
        keywordKind[408] = (Cobol85KWLexerexp.TRUNC);

        //
        // Rule 409:  Keyword ::= u n t i l
        //
        keywordKind[409] = (Cobol85KWLexerexp.UNTIL);

        //
        // Rule 410:  Keyword ::= u p p e r
        //
        keywordKind[410] = (Cobol85KWLexerexp.UPPER);

        //
        // Rule 411:  Keyword ::= u s a g e
        //
        keywordKind[411] = (Cobol85KWLexerexp.USAGE);

        //
        // Rule 412:  Keyword ::= u s i n g
        //
        keywordKind[412] = (Cobol85KWLexerexp.USING);

        //
        // Rule 413:  Keyword ::= v a l u e
        //
        keywordKind[413] = (Cobol85KWLexerexp.VALUE);

        //
        // Rule 414:  Keyword ::= v b r e f
        //
        keywordKind[414] = (Cobol85KWLexerexp.VBREF);

        //
        // Rule 415:  Keyword ::= w o r d s
        //
        keywordKind[415] = (Cobol85KWLexerexp.WORDS);

        //
        // Rule 416:  Keyword ::= w r i t e
        //
        keywordKind[416] = (Cobol85KWLexerexp.WRITE);

        //
        // Rule 417:  Keyword ::= x m l s s
        //
        keywordKind[417] = (Cobol85KWLexerexp.XMLSS);

        //
        // Rule 418:  Keyword ::= x o p t s
        //
        keywordKind[418] = (Cobol85KWLexerexp.XOPTS);

        //
        // Rule 419:  Keyword ::= z e r o s
        //
        keywordKind[419] = (Cobol85KWLexerexp.ZEROS);

        //
        // Rule 420:  Keyword ::= a l s o
        //
        keywordKind[420] = (Cobol85KWLexerexp.ALSO);

        //
        // Rule 421:  Keyword ::= a n s i
        //
        keywordKind[421] = (Cobol85KWLexerexp.ANSI);

        //
        // Rule 422:  Keyword ::= a r e a
        //
        keywordKind[422] = (Cobol85KWLexerexp.AREA);

        //
        // Rule 423:  Keyword ::= a u t o
        //
        keywordKind[423] = (Cobol85KWLexerexp.AUTO);

        //
        // Rule 424:  Keyword ::= b e e p
        //
        keywordKind[424] = (Cobol85KWLexerexp.BEEP);

        //
        // Rule 425:  Keyword ::= b e l l
        //
        keywordKind[425] = (Cobol85KWLexerexp.BELL);

        //
        // Rule 426:  Keyword ::= c a l l
        //
        keywordKind[426] = (Cobol85KWLexerexp.CALL);

        //
        // Rule 427:  Keyword ::= c i c s
        //
        keywordKind[427] = (Cobol85KWLexerexp.CICS);

        //
        // Rule 428:  Keyword ::= c o d e
        //
        keywordKind[428] = (Cobol85KWLexerexp.CODE);

        //
        // Rule 429:  Keyword ::= c o m p
        //
        keywordKind[429] = (Cobol85KWLexerexp.COMP);

        //
        // Rule 430:  Keyword ::= c o p y
        //
        keywordKind[430] = (Cobol85KWLexerexp.COPY);

        //
        // Rule 431:  Keyword ::= c o r r
        //
        keywordKind[431] = (Cobol85KWLexerexp.CORR);

        //
        // Rule 432:  Keyword ::= c p s m
        //
        keywordKind[432] = (Cobol85KWLexerexp.CPSM);

        //
        // Rule 433:  Keyword ::= c u r r
        //
        keywordKind[433] = (Cobol85KWLexerexp.CURR);

        //
        // Rule 434:  Keyword ::= d a t a
        //
        keywordKind[434] = (Cobol85KWLexerexp.DATA);

        //
        // Rule 435:  Keyword ::= d a t e
        //
        keywordKind[435] = (Cobol85KWLexerexp.DATE);

        //
        // Rule 436:  Keyword ::= d b c s
        //
        keywordKind[436] = (Cobol85KWLexerexp.DBCS);

        //
        // Rule 437:  Keyword ::= d e c k
        //
        keywordKind[437] = (Cobol85KWLexerexp.DECK);

        //
        // Rule 438:  Keyword ::= d i s k
        //
        keywordKind[438] = (Cobol85KWLexerexp.DISK);

        //
        // Rule 439:  Keyword ::= d o w n
        //
        keywordKind[439] = (Cobol85KWLexerexp.DOWN);

        //
        // Rule 440:  Keyword ::= d u m p
        //
        keywordKind[440] = (Cobol85KWLexerexp.DUMP);

        //
        // Rule 441:  Keyword ::= e g c s
        //
        keywordKind[441] = (Cobol85KWLexerexp.EGCS);

        //
        // Rule 442:  Keyword ::= e j p d
        //
        keywordKind[442] = (Cobol85KWLexerexp.EJPD);

        //
        // Rule 443:  Keyword ::= e l s e
        //
        keywordKind[443] = (Cobol85KWLexerexp.ELSE);

        //
        // Rule 444:  Keyword ::= e x c i
        //
        keywordKind[444] = (Cobol85KWLexerexp.EXCI);

        //
        // Rule 445:  Keyword ::= e x e c
        //
        keywordKind[445] = (Cobol85KWLexerexp.EXEC);

        //
        // Rule 446:  Keyword ::= e x i t
        //
        keywordKind[446] = (Cobol85KWLexerexp.EXIT);

        //
        // Rule 447:  Keyword ::= f e p i
        //
        keywordKind[447] = (Cobol85KWLexerexp.FEPI);

        //
        // Rule 448:  Keyword ::= f i l e
        //
        keywordKind[448] = (Cobol85KWLexerexp.FILE);

        //
        // Rule 449:  Keyword ::= f l a g
        //
        keywordKind[449] = (Cobol85KWLexerexp.FLAG);

        //
        // Rule 450:  Keyword ::= f r o m
        //
        keywordKind[450] = (Cobol85KWLexerexp.FROM);

        //
        // Rule 451:  Keyword ::= f s r t
        //
        keywordKind[451] = (Cobol85KWLexerexp.FSRT);

        //
        // Rule 452:  Keyword ::= f u l l
        //
        keywordKind[452] = (Cobol85KWLexerexp.FULL);

        //
        // Rule 453:  Keyword ::= g r i d
        //
        keywordKind[453] = (Cobol85KWLexerexp.GRID);

        //
        // Rule 454:  Keyword ::= h o o k
        //
        keywordKind[454] = (Cobol85KWLexerexp.HOOK);

        //
        // Rule 455:  Keyword ::= i n t o
        //
        keywordKind[455] = (Cobol85KWLexerexp.INTO);

        //
        // Rule 456:  Keyword ::= j u s t
        //
        keywordKind[456] = (Cobol85KWLexerexp.JUST);

        //
        // Rule 457:  Keyword ::= k e p t
        //
        keywordKind[457] = (Cobol85KWLexerexp.KEPT);

        //
        // Rule 458:  Keyword ::= l a n g
        //
        keywordKind[458] = (Cobol85KWLexerexp.LANG);

        //
        // Rule 459:  Keyword ::= l a s t
        //
        keywordKind[459] = (Cobol85KWLexerexp.LAST);

        //
        // Rule 460:  Keyword ::= l e f t
        //
        keywordKind[460] = (Cobol85KWLexerexp.LEFT);

        //
        // Rule 461:  Keyword ::= l e s s
        //
        keywordKind[461] = (Cobol85KWLexerexp.LESS);

        //
        // Rule 462:  Keyword ::= l i n e
        //
        keywordKind[462] = (Cobol85KWLexerexp.LINE);

        //
        // Rule 463:  Keyword ::= l i s t
        //
        keywordKind[463] = (Cobol85KWLexerexp.LIST);

        //
        // Rule 464:  Keyword ::= l o c k
        //
        keywordKind[464] = (Cobol85KWLexerexp.LOCK);

        //
        // Rule 465:  Keyword ::= m o d e
        //
        keywordKind[465] = (Cobol85KWLexerexp.MODE);

        //
        // Rule 466:  Keyword ::= m o v e
        //
        keywordKind[466] = (Cobol85KWLexerexp.MOVE);

        //
        // Rule 467:  Keyword ::= n a m e
        //
        keywordKind[467] = (Cobol85KWLexerexp.NAME);

        //
        // Rule 468:  Keyword ::= n e x t
        //
        keywordKind[468] = (Cobol85KWLexerexp.NEXT);

        //
        // Rule 469:  Keyword ::= n o d e
        //
        keywordKind[469] = (Cobol85KWLexerexp.NODE);

        //
        // Rule 470:  Keyword ::= n o d p
        //
        keywordKind[470] = (Cobol85KWLexerexp.NODP);

        //
        // Rule 471:  Keyword ::= n o d u
        //
        keywordKind[471] = (Cobol85KWLexerexp.NODU);

        //
        // Rule 472:  Keyword ::= n o m d
        //
        keywordKind[472] = (Cobol85KWLexerexp.NOMD);

        //
        // Rule 473:  Keyword ::= n o w d
        //
        keywordKind[473] = (Cobol85KWLexerexp.NOWD);

        //
        // Rule 474:  Keyword ::= n s e q
        //
        keywordKind[474] = (Cobol85KWLexerexp.NSEQ);

        //
        // Rule 475:  Keyword ::= n u l l
        //
        keywordKind[475] = (Cobol85KWLexerexp.NULL_);

        //
        // Rule 476:  Keyword ::= o p e n
        //
        keywordKind[476] = (Cobol85KWLexerexp.OPEN);

        //
        // Rule 477:  Keyword ::= p a g e
        //
        keywordKind[477] = (Cobol85KWLexerexp.PAGE);

        //
        // Rule 478:  Keyword ::= p g m n
        //
        keywordKind[478] = (Cobol85KWLexerexp.PGMN);

        //
        // Rule 479:  Keyword ::= p l u s
        //
        keywordKind[479] = (Cobol85KWLexerexp.PLUS);

        //
        // Rule 480:  Keyword ::= p o r t
        //
        keywordKind[480] = (Cobol85KWLexerexp.PORT);

        //
        // Rule 481:  Keyword ::= r e a d
        //
        keywordKind[481] = (Cobol85KWLexerexp.READ);

        //
        // Rule 482:  Keyword ::= r e a l
        //
        keywordKind[482] = (Cobol85KWLexerexp.REAL);

        //
        // Rule 483:  Keyword ::= r e e l
        //
        keywordKind[483] = (Cobol85KWLexerexp.REEL);

        //
        // Rule 484:  Keyword ::= r e n t
        //
        keywordKind[484] = (Cobol85KWLexerexp.RENT);

        //
        // Rule 485:  Keyword ::= s a m e
        //
        keywordKind[485] = (Cobol85KWLexerexp.SAME);

        //
        // Rule 486:  Keyword ::= s a v e
        //
        keywordKind[486] = (Cobol85KWLexerexp.SAVE);

        //
        // Rule 487:  Keyword ::= s e n d
        //
        keywordKind[487] = (Cobol85KWLexerexp.SEND);

        //
        // Rule 488:  Keyword ::= s i g n
        //
        keywordKind[488] = (Cobol85KWLexerexp.SIGN);

        //
        // Rule 489:  Keyword ::= s i z e
        //
        keywordKind[489] = (Cobol85KWLexerexp.SIZE);

        //
        // Rule 490:  Keyword ::= s o r t
        //
        keywordKind[490] = (Cobol85KWLexerexp.SORT);

        //
        // Rule 491:  Keyword ::= s p i e
        //
        keywordKind[491] = (Cobol85KWLexerexp.SPIE);

        //
        // Rule 492:  Keyword ::= s q l c
        //
        keywordKind[492] = (Cobol85KWLexerexp.SQLC);

        //
        // Rule 493:  Keyword ::= s t o p
        //
        keywordKind[493] = (Cobol85KWLexerexp.STOP);

        //
        // Rule 494:  Keyword ::= s y n c
        //
        keywordKind[494] = (Cobol85KWLexerexp.SYNC);

        //
        // Rule 495:  Keyword ::= t a p e
        //
        keywordKind[495] = (Cobol85KWLexerexp.TAPE);

        //
        // Rule 496:  Keyword ::= t a s k
        //
        keywordKind[496] = (Cobol85KWLexerexp.TASK);

        //
        // Rule 497:  Keyword ::= t e r m
        //
        keywordKind[497] = (Cobol85KWLexerexp.TERM);

        //
        // Rule 498:  Keyword ::= t e s t
        //
        keywordKind[498] = (Cobol85KWLexerexp.TEST);

        //
        // Rule 499:  Keyword ::= t e x t
        //
        keywordKind[499] = (Cobol85KWLexerexp.TEXT);

        //
        // Rule 500:  Keyword ::= t h a n
        //
        keywordKind[500] = (Cobol85KWLexerexp.THAN);

        //
        // Rule 501:  Keyword ::= t h e n
        //
        keywordKind[501] = (Cobol85KWLexerexp.THEN);

        //
        // Rule 502:  Keyword ::= t h r u
        //
        keywordKind[502] = (Cobol85KWLexerexp.THRU);

        //
        // Rule 503:  Keyword ::= t i m e
        //
        keywordKind[503] = (Cobol85KWLexerexp.TIME);

        //
        // Rule 504:  Keyword ::= t r i g
        //
        keywordKind[504] = (Cobol85KWLexerexp.TRIG);

        //
        // Rule 505:  Keyword ::= t r u e
        //
        keywordKind[505] = (Cobol85KWLexerexp.TRUE);

        //
        // Rule 506:  Keyword ::= t y p e
        //
        keywordKind[506] = (Cobol85KWLexerexp.TYPE);

        //
        // Rule 507:  Keyword ::= u n i t
        //
        keywordKind[507] = (Cobol85KWLexerexp.UNIT);

        //
        // Rule 508:  Keyword ::= u p o n
        //
        keywordKind[508] = (Cobol85KWLexerexp.UPON);

        //
        // Rule 509:  Keyword ::= w a i t
        //
        keywordKind[509] = (Cobol85KWLexerexp.WAIT);

        //
        // Rule 510:  Keyword ::= w h e n
        //
        keywordKind[510] = (Cobol85KWLexerexp.WHEN);

        //
        // Rule 511:  Keyword ::= w i t h
        //
        keywordKind[511] = (Cobol85KWLexerexp.WITH);

        //
        // Rule 512:  Keyword ::= w o r d
        //
        keywordKind[512] = (Cobol85KWLexerexp.WORD);

        //
        // Rule 513:  Keyword ::= x r e f
        //
        keywordKind[513] = (Cobol85KWLexerexp.XREF);

        //
        // Rule 514:  Keyword ::= y e a r
        //
        keywordKind[514] = (Cobol85KWLexerexp.YEAR);

        //
        // Rule 515:  Keyword ::= z e r o
        //
        keywordKind[515] = (Cobol85KWLexerexp.ZERO);

        //
        // Rule 516:  Keyword ::= a d d
        //
        keywordKind[516] = (Cobol85KWLexerexp.ADD);

        //
        // Rule 517:  Keyword ::= a d v
        //
        keywordKind[517] = (Cobol85KWLexerexp.ADV);

        //
        // Rule 518:  Keyword ::= a l l
        //
        keywordKind[518] = (Cobol85KWLexerexp.ALL);

        //
        // Rule 519:  Keyword ::= a n d
        //
        keywordKind[519] = (Cobol85KWLexerexp.AND);

        //
        // Rule 520:  Keyword ::= a n y
        //
        keywordKind[520] = (Cobol85KWLexerexp.ANY);

        //
        // Rule 521:  Keyword ::= a r e
        //
        keywordKind[521] = (Cobol85KWLexerexp.ARE);

        //
        // Rule 522:  Keyword ::= a w o
        //
        keywordKind[522] = (Cobol85KWLexerexp.AWO);

        //
        // Rule 523:  Keyword ::= b i n
        //
        keywordKind[523] = (Cobol85KWLexerexp.BIN);

        //
        // Rule 524:  Keyword ::= b i t
        //
        keywordKind[524] = (Cobol85KWLexerexp.BIT);

        //
        // Rule 525:  Keyword ::= b u f
        //
        keywordKind[525] = (Cobol85KWLexerexp.BUF);

        //
        // Rule 526:  Keyword ::= c b l
        //
        keywordKind[526] = (Cobol85KWLexerexp.CBL);

        //
        // Rule 527:  Keyword ::= c o l
        //
        keywordKind[527] = (Cobol85KWLexerexp.COL);

        //
        // Rule 528:  Keyword ::= c p p
        //
        keywordKind[528] = (Cobol85KWLexerexp.CPP);

        //
        // Rule 529:  Keyword ::= d a y
        //
        keywordKind[529] = (Cobol85KWLexerexp.DAY);

        //
        // Rule 530:  Keyword ::= d l i
        //
        keywordKind[530] = (Cobol85KWLexerexp.DLI);

        //
        // Rule 531:  Keyword ::= d l l
        //
        keywordKind[531] = (Cobol85KWLexerexp.DLL);

        //
        // Rule 532:  Keyword ::= d t r
        //
        keywordKind[532] = (Cobol85KWLexerexp.DTR);

        //
        // Rule 533:  Keyword ::= d y n
        //
        keywordKind[533] = (Cobol85KWLexerexp.DYN);

        //
        // Rule 534:  Keyword ::= e d f
        //
        keywordKind[534] = (Cobol85KWLexerexp.EDF);

        //
        // Rule 535:  Keyword ::= e g i
        //
        keywordKind[535] = (Cobol85KWLexerexp.EGI);

        //
        // Rule 536:  Keyword ::= e m i
        //
        keywordKind[536] = (Cobol85KWLexerexp.EMI);

        //
        // Rule 537:  Keyword ::= e n d
        //
        keywordKind[537] = (Cobol85KWLexerexp.END);

        //
        // Rule 538:  Keyword ::= e o l
        //
        keywordKind[538] = (Cobol85KWLexerexp.EOL);

        //
        // Rule 539:  Keyword ::= e o p
        //
        keywordKind[539] = (Cobol85KWLexerexp.EOP);

        //
        // Rule 540:  Keyword ::= e o s
        //
        keywordKind[540] = (Cobol85KWLexerexp.EOS);

        //
        // Rule 541:  Keyword ::= e s i
        //
        keywordKind[541] = (Cobol85KWLexerexp.ESI);

        //
        // Rule 542:  Keyword ::= e x p
        //
        keywordKind[542] = (Cobol85KWLexerexp.EXP);

        //
        // Rule 543:  Keyword ::= f o r
        //
        keywordKind[543] = (Cobol85KWLexerexp.FOR);

        //
        // Rule 544:  Keyword ::= g d s
        //
        keywordKind[544] = (Cobol85KWLexerexp.GDS);

        //
        // Rule 545:  Keyword ::= k e y
        //
        keywordKind[545] = (Cobol85KWLexerexp.KEY);

        //
        // Rule 546:  Keyword ::= l i b
        //
        keywordKind[546] = (Cobol85KWLexerexp.LIB);

        //
        // Rule 547:  Keyword ::= l i n
        //
        keywordKind[547] = (Cobol85KWLexerexp.LIN);

        //
        // Rule 548:  Keyword ::= m a p
        //
        keywordKind[548] = (Cobol85KWLexerexp.MAP);

        //
        // Rule 549:  Keyword ::= m a x
        //
        keywordKind[549] = (Cobol85KWLexerexp.MAX);

        //
        // Rule 550:  Keyword ::= m i g
        //
        keywordKind[550] = (Cobol85KWLexerexp.MIG);

        //
        // Rule 551:  Keyword ::= n a t
        //
        keywordKind[551] = (Cobol85KWLexerexp.NAT);

        //
        // Rule 552:  Keyword ::= n o c
        //
        keywordKind[552] = (Cobol85KWLexerexp.NOC);

        //
        // Rule 553:  Keyword ::= n o d
        //
        keywordKind[553] = (Cobol85KWLexerexp.NOD);

        //
        // Rule 554:  Keyword ::= n o f
        //
        keywordKind[554] = (Cobol85KWLexerexp.NOF);

        //
        // Rule 555:  Keyword ::= n o p
        //
        keywordKind[555] = (Cobol85KWLexerexp.NOP);

        //
        // Rule 556:  Keyword ::= n o s
        //
        keywordKind[556] = (Cobol85KWLexerexp.NOS);

        //
        // Rule 557:  Keyword ::= n o t
        //
        keywordKind[557] = (Cobol85KWLexerexp.NOT);

        //
        // Rule 558:  Keyword ::= n o x
        //
        keywordKind[558] = (Cobol85KWLexerexp.NOX);

        //
        // Rule 559:  Keyword ::= n u m
        //
        keywordKind[559] = (Cobol85KWLexerexp.NUM);

        //
        // Rule 560:  Keyword ::= o b j
        //
        keywordKind[560] = (Cobol85KWLexerexp.OBJ);

        //
        // Rule 561:  Keyword ::= o d t
        //
        keywordKind[561] = (Cobol85KWLexerexp.ODT);

        //
        // Rule 562:  Keyword ::= o f f
        //
        keywordKind[562] = (Cobol85KWLexerexp.OFF);

        //
        // Rule 563:  Keyword ::= o p t
        //
        keywordKind[563] = (Cobol85KWLexerexp.OPT);

        //
        // Rule 564:  Keyword ::= o u t
        //
        keywordKind[564] = (Cobol85KWLexerexp.OUT);

        //
        // Rule 565:  Keyword ::= o w n
        //
        keywordKind[565] = (Cobol85KWLexerexp.OWN);

        //
        // Rule 566:  Keyword ::= p f d
        //
        keywordKind[566] = (Cobol85KWLexerexp.PFD);

        //
        // Rule 567:  Keyword ::= p i c
        //
        keywordKind[567] = (Cobol85KWLexerexp.PIC);

        //
        // Rule 568:  Keyword ::= r e f
        //
        keywordKind[568] = (Cobol85KWLexerexp.REF);

        //
        // Rule 569:  Keyword ::= r u n
        //
        keywordKind[569] = (Cobol85KWLexerexp.RUN);

        //
        // Rule 570:  Keyword ::= s e p
        //
        keywordKind[570] = (Cobol85KWLexerexp.SEP);

        //
        // Rule 571:  Keyword ::= s e q
        //
        keywordKind[571] = (Cobol85KWLexerexp.SEQ);

        //
        // Rule 572:  Keyword ::= s e t
        //
        keywordKind[572] = (Cobol85KWLexerexp.SET);

        //
        // Rule 573:  Keyword ::= s q l
        //
        keywordKind[573] = (Cobol85KWLexerexp.SQL);

        //
        // Rule 574:  Keyword ::= s s r
        //
        keywordKind[574] = (Cobol85KWLexerexp.SSR);

        //
        // Rule 575:  Keyword ::= s t d
        //
        keywordKind[575] = (Cobol85KWLexerexp.STD);

        //
        // Rule 576:  Keyword ::= s u m
        //
        keywordKind[576] = (Cobol85KWLexerexp.SUM);

        //
        // Rule 577:  Keyword ::= t o p
        //
        keywordKind[577] = (Cobol85KWLexerexp.TOP);

        //
        // Rule 578:  Keyword ::= u s e
        //
        keywordKind[578] = (Cobol85KWLexerexp.USE);

        //
        // Rule 579:  Keyword ::= z w b
        //
        keywordKind[579] = (Cobol85KWLexerexp.ZWB);

        //
        // Rule 580:  Keyword ::= a r
        //
        keywordKind[580] = (Cobol85KWLexerexp.AR);

        //
        // Rule 581:  Keyword ::= a s
        //
        keywordKind[581] = (Cobol85KWLexerexp.AS);

        //
        // Rule 582:  Keyword ::= a t
        //
        keywordKind[582] = (Cobol85KWLexerexp.AT);

        //
        // Rule 583:  Keyword ::= b y
        //
        keywordKind[583] = (Cobol85KWLexerexp.BY);

        //
        // Rule 584:  Keyword ::= c d
        //
        keywordKind[584] = (Cobol85KWLexerexp.CD);

        //
        // Rule 585:  Keyword ::= c f
        //
        keywordKind[585] = (Cobol85KWLexerexp.CF);

        //
        // Rule 586:  Keyword ::= c h
        //
        keywordKind[586] = (Cobol85KWLexerexp.CH);

        //
        // Rule 587:  Keyword ::= c o
        //
        keywordKind[587] = (Cobol85KWLexerexp.CO);

        //
        // Rule 588:  Keyword ::= c p
        //
        keywordKind[588] = (Cobol85KWLexerexp.CP);

        //
        // Rule 589:  Keyword ::= c s
        //
        keywordKind[589] = (Cobol85KWLexerexp.CS);

        //
        // Rule 590:  Keyword ::= d d
        //
        keywordKind[590] = (Cobol85KWLexerexp.DD);

        //
        // Rule 591:  Keyword ::= d e
        //
        keywordKind[591] = (Cobol85KWLexerexp.DE);

        //
        // Rule 592:  Keyword ::= d p
        //
        keywordKind[592] = (Cobol85KWLexerexp.DP);

        //
        // Rule 593:  Keyword ::= d u
        //
        keywordKind[593] = (Cobol85KWLexerexp.DU);

        //
        // Rule 594:  Keyword ::= e n
        //
        keywordKind[594] = (Cobol85KWLexerexp.EN);

        //
        // Rule 595:  Keyword ::= f d
        //
        keywordKind[595] = (Cobol85KWLexerexp.FD);

        //
        // Rule 596:  Keyword ::= g o
        //
        keywordKind[596] = (Cobol85KWLexerexp.GO);

        //
        // Rule 597:  Keyword ::= i d
        //
        keywordKind[597] = (Cobol85KWLexerexp.ID);

        //
        // Rule 598:  Keyword ::= i f
        //
        keywordKind[598] = (Cobol85KWLexerexp.IF);

        //
        // Rule 599:  Keyword ::= i n
        //
        keywordKind[599] = (Cobol85KWLexerexp.IN);

        //
        // Rule 600:  Keyword ::= i s
        //
        keywordKind[600] = (Cobol85KWLexerexp.IS);

        //
        // Rule 601:  Keyword ::= j a
        //
        keywordKind[601] = (Cobol85KWLexerexp.JA);

        //
        // Rule 602:  Keyword ::= j p
        //
        keywordKind[602] = (Cobol85KWLexerexp.JP);

        //
        // Rule 603:  Keyword ::= k a
        //
        keywordKind[603] = (Cobol85KWLexerexp.KA);

        //
        // Rule 604:  Keyword ::= l b
        //
        keywordKind[604] = (Cobol85KWLexerexp.LB);

        //
        // Rule 605:  Keyword ::= l c
        //
        keywordKind[605] = (Cobol85KWLexerexp.LC);

        //
        // Rule 606:  Keyword ::= l d
        //
        keywordKind[606] = (Cobol85KWLexerexp.LD);

        //
        // Rule 607:  Keyword ::= l m
        //
        keywordKind[607] = (Cobol85KWLexerexp.LM);

        //
        // Rule 608:  Keyword ::= l u
        //
        keywordKind[608] = (Cobol85KWLexerexp.LU);

        //
        // Rule 609:  Keyword ::= m d
        //
        keywordKind[609] = (Cobol85KWLexerexp.MD);

        //
        // Rule 610:  Keyword ::= n n
        //
        keywordKind[610] = (Cobol85KWLexerexp.NN);

        //
        // Rule 611:  Keyword ::= n o
        //
        keywordKind[611] = (Cobol85KWLexerexp.NO);

        //
        // Rule 612:  Keyword ::= n s
        //
        keywordKind[612] = (Cobol85KWLexerexp.NS);

        //
        // Rule 613:  Keyword ::= o f
        //
        keywordKind[613] = (Cobol85KWLexerexp.OF);

        //
        // Rule 614:  Keyword ::= o n
        //
        keywordKind[614] = (Cobol85KWLexerexp.ON);

        //
        // Rule 615:  Keyword ::= o p
        //
        keywordKind[615] = (Cobol85KWLexerexp.OP);

        //
        // Rule 616:  Keyword ::= o r
        //
        keywordKind[616] = (Cobol85KWLexerexp.OR);

        //
        // Rule 617:  Keyword ::= p f
        //
        keywordKind[617] = (Cobol85KWLexerexp.PF);

        //
        // Rule 618:  Keyword ::= p h
        //
        keywordKind[618] = (Cobol85KWLexerexp.PH);

        //
        // Rule 619:  Keyword ::= r d
        //
        keywordKind[619] = (Cobol85KWLexerexp.RD);

        //
        // Rule 620:  Keyword ::= r f
        //
        keywordKind[620] = (Cobol85KWLexerexp.RF);

        //
        // Rule 621:  Keyword ::= r h
        //
        keywordKind[621] = (Cobol85KWLexerexp.RH);

        //
        // Rule 622:  Keyword ::= s d
        //
        keywordKind[622] = (Cobol85KWLexerexp.SD);

        //
        // Rule 623:  Keyword ::= s p
        //
        keywordKind[623] = (Cobol85KWLexerexp.SP);

        //
        // Rule 624:  Keyword ::= s s
        //
        keywordKind[624] = (Cobol85KWLexerexp.SS);

        //
        // Rule 625:  Keyword ::= s z
        //
        keywordKind[625] = (Cobol85KWLexerexp.SZ);

        //
        // Rule 626:  Keyword ::= t o
        //
        keywordKind[626] = (Cobol85KWLexerexp.TO);

        //
        // Rule 627:  Keyword ::= u e
        //
        keywordKind[627] = (Cobol85KWLexerexp.UE);

        //
        // Rule 628:  Keyword ::= u p
        //
        keywordKind[628] = (Cobol85KWLexerexp.UP);

        //
        // Rule 629:  Keyword ::= w d
        //
        keywordKind[629] = (Cobol85KWLexerexp.WD);

        //
        // Rule 630:  Keyword ::= x p
        //
        keywordKind[630] = (Cobol85KWLexerexp.XP);

        //
        // Rule 631:  Keyword ::= y w
        //
        keywordKind[631] = (Cobol85KWLexerexp.YW);

    //#line 111 "KeywordTemplateF.gi

        for (int i = 0; i < keywordKind.length; i++)
        {
            if (keywordKind[i] == 0)
                keywordKind[i] = identifierKind;
        }
    }
}

