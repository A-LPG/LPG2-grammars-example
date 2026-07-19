package lpg.grammars.swift_fin;

public class SwiftFinLexerprs implements lpg.runtime.ParseTable, SwiftFinLexersym {
    public final static int ERROR_SYMBOL = 0;
    public final int getErrorSymbol() { return ERROR_SYMBOL; }

    public final static int SCOPE_UBOUND = 0;
    public final int getScopeUbound() { return SCOPE_UBOUND; }

    public final static int SCOPE_SIZE = 0;
    public final int getScopeSize() { return SCOPE_SIZE; }

    public final static int MAX_NAME_LENGTH = 0;
    public final int getMaxNameLength() { return MAX_NAME_LENGTH; }

    public final static int NUM_STATES = 77;
    public final int getNumStates() { return NUM_STATES; }

    public final static int NT_OFFSET = 94;
    public final int getNtOffset() { return NT_OFFSET; }

    public final static int LA_STATE_OFFSET = 585;
    public final int getLaStateOffset() { return LA_STATE_OFFSET; }

    public final static int MAX_LA = 1;
    public final int getMaxLa() { return MAX_LA; }

    public final static int NUM_RULES = 214;
    public final int getNumRules() { return NUM_RULES; }

    public final static int NUM_NONTERMINALS = 50;
    public final int getNumNonterminals() { return NUM_NONTERMINALS; }

    public final static int NUM_SYMBOLS = 144;
    public final int getNumSymbols() { return NUM_SYMBOLS; }

    public final static int SEGMENT_SIZE = 8192;
    public final int getSegmentSize() { return SEGMENT_SIZE; }

    public final static int START_STATE = 215;
    public final int getStartState() { return START_STATE; }

    public final static int IDENTIFIER_SYMBOL = 0;
    public final int getIdentifier_SYMBOL() { return IDENTIFIER_SYMBOL; }

    public final static int EOFT_SYMBOL = 1;
    public final int getEoftSymbol() { return EOFT_SYMBOL; }

    public final static int EOLT_SYMBOL = 95;
    public final int getEoltSymbol() { return EOLT_SYMBOL; }

    public final static int ACCEPT_ACTION = 370;
    public final int getAcceptAction() { return ACCEPT_ACTION; }

    public final static int ERROR_ACTION = 371;
    public final int getErrorAction() { return ERROR_ACTION; }

    public final static boolean BACKTRACK = false;
    public final boolean getBacktrack() { return BACKTRACK; }

    public final int getStartSymbol() { return lhs(0); }
    public final boolean isValidForParser() { return SwiftFinLexersym.isValidForParser; }


    public interface IsNullable {
        public final static byte isNullable[] = {0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0
        };
    };
    public final static byte isNullable[] = IsNullable.isNullable;
    public final boolean isNullable(int index) { return isNullable[index] != 0; }

    public interface ProsthesesIndex {
        public final static byte prosthesesIndex[] = {0,
            23,24,25,26,27,28,29,30,31,32,
            33,34,35,36,37,38,39,40,41,42,
            43,44,45,46,47,48,49,50,2,3,
            4,5,6,7,8,9,10,11,12,13,
            14,15,16,17,18,19,20,21,22,1
        };
    };
    public final static byte prosthesesIndex[] = ProsthesesIndex.prosthesesIndex;
    public final int prosthesesIndex(int index) { return prosthesesIndex[index]; }

    public interface IsKeyword {
        public final static byte isKeyword[] = {0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0
        };
    };
    public final static byte isKeyword[] = IsKeyword.isKeyword;
    public final boolean isKeyword(int index) { return isKeyword[index] != 0; }

    public interface BaseCheck {
        public final static byte baseCheck[] = {0,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,3,3,3,
            4,3,3,2,1,1,2,1,1,1,
            1,1,1,1,1,1,2,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            2,1,1,1
        };
    };
    public final static byte baseCheck[] = BaseCheck.baseCheck;
    public final int baseCheck(int index) { return baseCheck[index]; }
    public final static byte rhs[] = baseCheck;
    public final int rhs(int index) { return rhs[index]; };

    public interface BaseAction {
        public final static char baseAction[] = {
            29,29,29,29,29,29,29,29,29,29,
            29,29,29,29,29,29,29,29,30,31,
            32,33,34,35,36,37,38,38,38,39,
            40,41,42,43,44,45,49,49,47,47,
            47,47,47,47,47,47,47,47,47,47,
            47,47,47,47,47,47,47,47,47,47,
            47,47,47,47,47,47,47,48,48,48,
            48,48,48,48,48,48,48,48,48,48,
            48,48,48,48,48,48,48,48,48,48,
            48,48,48,48,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,
            1,1,1,2,2,2,26,26,26,26,
            26,26,26,26,26,26,26,26,26,26,
            26,26,26,26,26,26,26,26,26,26,
            26,26,27,27,27,27,27,27,27,27,
            27,27,27,27,27,27,27,27,27,27,
            27,27,27,27,27,27,27,27,3,3,
            3,3,3,3,3,3,3,3,25,4,
            5,6,7,8,9,10,11,12,13,14,
            15,16,17,18,19,20,21,22,23,24,
            46,46,28,28,28,1,368,320,319,315,
            314,313,312,311,310,309,308,307,306,305,
            304,303,302,301,300,299,298,297,296,295,
            322,335,334,367,294,1,2,3,4,5,
            6,7,8,9,10,11,12,13,14,15,
            16,293,29,33,265,96,37,37,37,37,
            37,37,37,37,37,37,37,37,37,37,
            37,37,37,37,37,37,37,37,37,37,
            327,37,37,207,101,194,194,194,194,194,
            194,194,194,194,194,194,194,194,194,194,
            194,194,194,194,194,194,2,202,202,194,
            194,211,214,204,216,192,190,97,218,219,
            222,223,226,227,229,233,235,237,239,241,
            243,245,247,249,251,253,255,257,259,263,
            265,267,269,271,273,275,277,279,281,283,
            285,287,289,291,293,295,297,299,301,371,
            371
        };
    };
    public final static char baseAction[] = BaseAction.baseAction;
    public final int baseAction(int index) { return baseAction[index]; }
    public final static char lhs[] = baseAction;
    public final int lhs(int index) { return lhs[index]; };

    public interface TermCheck {
        public final static byte termCheck[] = {0,
            0,0,2,3,4,5,6,7,8,9,
            10,11,12,13,14,15,16,17,18,19,
            20,21,22,23,24,25,26,27,28,29,
            30,31,32,33,34,35,36,37,38,39,
            40,41,42,43,44,45,46,47,48,49,
            50,51,52,53,54,55,56,57,58,59,
            60,61,62,63,64,65,66,67,68,69,
            70,71,72,73,74,75,76,77,78,79,
            80,81,82,83,84,85,86,87,88,89,
            90,91,92,93,94,0,0,2,3,4,
            0,1,7,8,9,10,11,12,13,14,
            15,16,17,18,19,20,21,22,23,24,
            25,26,27,28,29,30,31,32,33,34,
            35,36,37,38,39,40,41,42,43,44,
            45,46,47,48,49,50,51,52,53,54,
            55,56,57,58,59,60,61,62,63,64,
            65,66,67,68,69,0,71,72,73,74,
            75,76,77,78,79,80,81,82,83,84,
            85,86,87,88,89,90,91,92,93,0,
            1,0,1,0,1,0,7,8,9,10,
            11,0,1,0,3,4,0,6,5,3,
            4,0,6,0,1,0,1,0,0,2,
            2,0,0,2,2,0,0,2,0,1,
            0,5,0,1,0,1,0,1,0,1,
            0,1,0,1,0,1,0,1,0,1,
            0,1,0,1,0,1,0,1,0,1,
            0,70,0,1,0,1,0,1,0,1,
            0,1,0,1,0,1,0,1,0,1,
            0,1,0,1,0,1,0,1,0,1,
            0,1,0,1,0,1,0,1,0,1,
            0,1,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0,0,0,0,0,0,
            0,0,0,0,0
        };
    };
    public final static byte termCheck[] = TermCheck.termCheck;
    public final int termCheck(int index) { return termCheck[index]; }

    public interface TermAction {
        public final static char termAction[] = {0,
            371,31,324,317,318,397,367,337,338,339,
            340,341,335,335,335,335,335,335,335,335,
            335,335,335,335,335,335,335,335,335,335,
            335,335,335,335,335,335,335,335,334,334,
            334,334,334,334,334,334,334,334,334,334,
            334,334,334,334,334,334,334,334,334,334,
            334,334,334,334,336,342,343,344,345,326,
            316,325,322,346,347,348,349,350,351,352,
            353,354,355,356,357,358,359,360,361,362,
            363,364,365,366,323,35,121,408,408,408,
            371,370,408,408,408,408,408,408,408,408,
            408,408,408,408,408,408,408,408,408,408,
            408,408,408,408,408,408,408,408,408,408,
            408,408,408,408,408,408,408,408,408,408,
            408,408,408,408,408,408,408,408,408,408,
            408,408,408,408,408,408,408,408,408,408,
            408,408,408,408,408,371,408,327,408,408,
            408,408,408,408,408,408,408,408,408,408,
            408,408,408,408,408,408,408,408,408,36,
            30,36,29,36,29,371,332,331,330,329,
            328,36,29,28,35,35,17,210,398,582,
            582,371,582,35,29,36,25,371,371,394,
            333,371,371,391,390,371,22,389,36,124,
            371,392,36,123,36,178,36,179,36,180,
            36,181,36,182,36,183,36,184,36,185,
            36,186,36,187,36,189,36,190,36,191,
            371,395,36,192,36,193,36,194,36,195,
            36,196,36,197,36,198,36,199,36,200,
            36,201,36,202,36,203,36,204,36,205,
            36,206,36,207,36,208,36,209,210,17,
            36,35
        };
    };
    public final static char termAction[] = TermAction.termAction;
    public final int termAction(int index) { return termAction[index]; }
    public final int asb(int index) { return 0; }
    public final int asr(int index) { return 0; }
    public final int nasb(int index) { return 0; }
    public final int nasr(int index) { return 0; }
    public final int terminalIndex(int index) { return 0; }
    public final int nonterminalIndex(int index) { return 0; }
    public final int scopePrefix(int index) { return 0;}
    public final int scopeSuffix(int index) { return 0;}
    public final int scopeLhs(int index) { return 0;}
    public final int scopeLa(int index) { return 0;}
    public final int scopeStateSet(int index) { return 0;}
    public final int scopeRhs(int index) { return 0;}
    public final int scopeState(int index) { return 0;}
    public final int inSymb(int index) { return 0;}
    public final String name(int index) { return null; }
    public final int originalState(int state) { return 0; }
    public final int asi(int state) { return 0; }
    public final int nasi(int state) { return 0; }
    public final int inSymbol(int state) { return 0; }

    /**
     * assert(! goto_default);
     */
    public final int ntAction(int state, int sym) {
        return baseAction[state + sym];
    }

    /**
     * assert(! shift_default);
     */
    public final int tAction(int state, int sym) {
        int i = baseAction[state],
            k = i + sym;
        return termAction[termCheck[k] == sym ? k : i];
    }
    public final int lookAhead(int la_state, int sym) {
        int k = la_state + sym;
        return termAction[termCheck[k] == sym ? k : la_state];
    }
}
