-- AUTO-GENERATED from antlr/grammars-v4 argus by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=ArgusParser
%options package=lpg.grammars.argus
%options template=dtParserTemplateF.gi
%options import_terminals=ArgusLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    -- Left-factored start: equate* shared prefix caused LALR to commit to equates_
    -- before seeing PROC/ITER/CLUSTER. Curated units start here.
    file_ ::= procedure
             | iterator
             | equates_
             | guardian
             | cluster
             | module

    module ::= idn EQ module_def

    module_def ::= EQUATES opt_8 list_9 END idn
                  | GUARDIAN opt_10 IS idn list_12 opt_16 opt_17 list_18 list_19 opt_21 opt_23 list_24 creator list_25 END idn
                  | CLUSTER opt_26 IS opidn list_28 opt_29 list_30 REP EQ type_spec list_31 list_32 routine list_33 END idn
                  | PROC opt_34 args opt_35 opt_36 opt_37 routine_body END idn
                  | ITER opt_38 args opt_39 opt_40 opt_41 routine_body END idn

    equates_ ::= idn EQ EQUATES opt_8 list_9 END idn

    guardian ::= idn EQ GUARDIAN opt_10 IS idn list_12 opt_16 opt_17 list_18 list_19 opt_21 opt_23 list_24 creator list_25 END idn

    cluster ::= idn EQ CLUSTER opt_26 IS opidn list_28 opt_29 list_30 REP EQ type_spec list_31 list_32 routine list_33 END idn

    operation ::= creator
                 | handler
                 | routine

    routine ::= procedure
               | iterator

    procedure ::= idn EQ PROC opt_34 args opt_35 opt_36 opt_37 routine_body END idn

    iterator ::= idn EQ ITER opt_38 args opt_39 opt_40 opt_41 routine_body END idn

    creator ::= idn EQ CREATOR args opt_42 opt_43 routine_body END idn

    handler ::= idn EQ HANDLER args opt_44 opt_45 routine_body END idn

    routine_body ::= list_46 list_47 list_48

    parms ::= parm list_50

    parm ::= idn list_52 COLON TYPE
            | idn list_54 COLON type_spec

    args ::= LPAREN list_58 RPAREN

    decl ::= idn list_60 COLON type_spec

    returnz ::= RETURNS LPAREN type_spec list_62 RPAREN

    yields ::= YIELDS LPAREN type_spec list_64 RPAREN

    signals ::= SIGNALS LPAREN exception_ list_66 RPAREN

    exception_ ::= name opt_70

    opidn ::= idn
             | TRANSMIT

    where ::= WHERE restriction list_72

    restriction ::= idn HAS oper_decl list_74
                   | idn IN type_set

    type_set ::= list_79
                | idn
                | reference DOLLAR name

    oper_decl ::= name list_81 COLON type_spec
                 | TRANSMIT

    constant ::= expression
                | type_spec

    state_decl ::= opt_82 decl
                  | opt_83 idn COLON type_spec COLONEQ expression
                  | opt_84 decl list_86 COLONEQ call

    equate ::= idn EQ constant
              | idn EQ type_set
              | idn EQ reference

    own_var ::= OWN decl
               | OWN idn COLON type_spec COLONEQ expression
               | OWN decl list_88 COLONEQ call opt_90

    statement ::= decl
                 | idn COLON type_spec COLONEQ expression
                 | decl list_92 COLONEQ call opt_94
                 | idn list_96 COLONEQ call opt_98
                 | idn list_100 COLONEQ expression list_102
                 | primaries DOT name COLONEQ expression
                 | primaries opt_103 COLONEQ expression
                 | call opt_105
                 | FORK call
                 | SEIZE expression DO body END
                 | PAUSE
                 | TERMINATE
                 | enter_stmt
                 | COENTER coarm list_106 END
                 | opt_107 LEAVE
                 | WHILE expression DO body END
                 | for_stmt
                 | if_stmt
                 | tagcase_stmt
                 | tagtest_stmt
                 | tagwait_stmt
                 | opt_108 RETURN opt_112
                 | YIELD opt_116
                 | opt_117 SIGNAL name opt_121
                 | opt_122 EXIT name opt_126
                 | opt_127 BREAK
                 | opt_128 CONTINUE
                 | BEGIN body END
                 | statement opt_129 RESIGNAL name list_131
                 | statement EXCEPT list_132 opt_133 END

    enter_stmt ::= ENTER TOPACTION body END
                  | ENTER ACTION body END

    coarm ::= armtag list_137 body

    armtag ::= ACTION
              | TOPACTION
              | PROCESS

    for_stmt ::= FOR decl list_139 IN call DO body END
                | FOR idn list_141 IN call DO body END

    if_stmt ::= IF expression THEN body list_143 opt_145 END

    tagcase_stmt ::= TAGCASE expression tag_arm list_146 opt_148 END

    tagtest_stmt ::= TAGTEST expression atag_arm list_149 opt_151 END

    tagwait_stmt ::= TAGWAIT expression atag_arm list_152 END

    tag_arm ::= TAG name list_154 opt_156 COLON body

    atag_arm ::= tag_kind name list_158 list_160 COLON body

    tag_kind ::= TAG
                | WTAG

    when_handler ::= WHEN name list_162 list_166 COLON body
                    | WHEN name list_168 LPAREN STAR RPAREN COLON body

    others_handler ::= OTHERS list_170 COLON body

    body ::= list_171 list_172

    type_spec ::= NULL_LITERAL
                 | NODE
                 | BOOL
                 | INT
                 | REAL
                 | CHAR
                 | STRING
                 | ANY
                 | IMAGE
                 | REP
                 | CVT
                 | SEQUENCE LBRACKET type_actual RBRACKET
                 | ARRAY LBRACKET type_actual RBRACKET
                 | ATOMIC_ARRAY LBRACKET type_actual RBRACKET
                 | STRUCT LBRACKET field_spec list_174 RBRACKET
                 | RECORD LBRACKET field_spec list_176 RBRACKET
                 | ATOMIC_RECORD LBRACKET field_spec list_178 RBRACKET
                 | ONEOF LBRACKET field_spec list_180 RBRACKET
                 | VARIANT LBRACKET field_spec list_182 RBRACKET
                 | ATOMIC_VARIANT LBRACKET field_spec list_184 RBRACKET
                 | PROCTYPE opt_188 opt_189 opt_190
                 | ITERTYPE opt_194 opt_195 opt_196
                 | CREATORTYPE opt_200 opt_201 opt_202
                 | HANDLERTYPE opt_206 opt_207 opt_208
                 | MUTEX LBRACKET type_actual RBRACKET
                 | reference

    field_spec ::= name list_210 COLON type_actual

    reference ::= idn
                 | idn opt_214
                 | reference DOLLAR name

    actual_parm ::= constant
                   | type_actual

    type_actual ::= type_spec opt_220

    opbinding ::= name list_222 COLON primaries

    expression ::= primaries
                  | call AT primaries
                  | LPAREN expression RPAREN
                  | TILDE expression
                  | MINUS expression
                  | expression STARSTAR expression
                  | expression SLASHSLASH expression
                  | expression SLASH expression
                  | expression STAR expression
                  | expression OROR expression
                  | expression PLUS expression
                  | expression MINUS expression
                  | expression LT expression
                  | expression LTEQ expression
                  | expression EQ expression
                  | expression GTEQ expression
                  | expression GT expression
                  | expression OP_44513 expression
                  | expression OP_96455 expression
                  | expression OP_26013 expression
                  | expression OP_3966 expression
                  | expression OP_82991 expression
                  | expression AMP expression
                  | expression CAND expression
                  | expression PIPE expression
                  | expression COR expression

    primaries ::= primary list_226

    primary ::= entities

    call ::= primaries LPAREN opt_230 RPAREN

    entities ::= entity list_232

    entity ::= NIL
              | TRUE
              | FALSE
              | INT_LITERAL
              | REAL_LITERAL
              | CHAR_LITERAL
              | STRING_LITERAL
              | SELF
              | reference
              | BIND entities opt_236
              | type_spec DOLLAR list_240
              | type_spec DOLLAR opt_242 opt_246
              | type_spec DOLLAR name opt_250
              | UP LPAREN expression RPAREN
              | DOWN LPAREN expression RPAREN

    field ::= name list_252 COLON expression

    bind_arg ::= STAR
                | expression

    name ::= IDENTIFIER

    idn ::= IDENTIFIER

    list_1 ::= (list_1 equate)?

    list_2 ::= (list_2 equate)?

    list_3 ::= (list_3 equate)?

    list_4 ::= (list_4 equate)?

    list_5 ::= (list_5 equate)?

    opt_6 ::= where?

    seq_7 ::= parms opt_6

    opt_8 ::= seq_7?

    list_9 ::= (list_9 equate)?

    opt_10 ::= parms?

    seq_11 ::= COMMA idn

    list_12 ::= (list_12 seq_11)?

    seq_13 ::= COMMA idn

    list_14 ::= (list_14 seq_13)?

    seq_15 ::= HANDLES idn list_14

    opt_16 ::= seq_15?

    opt_17 ::= where?

    list_18 ::= (list_18 equate)?

    list_19 ::= (list_19 state_decl)?

    seq_20 ::= RECOVER body END

    opt_21 ::= seq_20?

    seq_22 ::= BACKGROUND body END

    opt_23 ::= seq_22?

    list_24 ::= (list_24 operation)?

    list_25 ::= (list_25 operation)?

    opt_26 ::= parms?

    seq_27 ::= COMMA opidn

    list_28 ::= (list_28 seq_27)?

    opt_29 ::= where?

    list_30 ::= (list_30 equate)?

    list_31 ::= (list_31 equate)?

    list_32 ::= (list_32 own_var)?

    list_33 ::= (list_33 routine)?

    opt_34 ::= parms?

    opt_35 ::= returnz?

    opt_36 ::= signals?

    opt_37 ::= where?

    opt_38 ::= parms?

    opt_39 ::= yields?

    opt_40 ::= signals?

    opt_41 ::= where?

    opt_42 ::= returnz?

    opt_43 ::= signals?

    opt_44 ::= returnz?

    opt_45 ::= signals?

    list_46 ::= (list_46 equate)?

    list_47 ::= (list_47 own_var)?

    list_48 ::= (list_48 statement)?

    seq_49 ::= COMMA parm

    list_50 ::= (list_50 seq_49)?

    seq_51 ::= COMMA idn

    list_52 ::= (list_52 seq_51)?

    seq_53 ::= COMMA idn

    list_54 ::= (list_54 seq_53)?

    seq_55 ::= COMMA decl

    list_56 ::= (list_56 seq_55)?

    seq_57 ::= decl list_56

    list_58 ::= (list_58 seq_57)?

    seq_59 ::= COMMA idn

    list_60 ::= (list_60 seq_59)?

    seq_61 ::= COMMA type_spec

    list_62 ::= (list_62 seq_61)?

    seq_63 ::= COMMA type_spec

    list_64 ::= (list_64 seq_63)?

    seq_65 ::= COMMA exception_

    list_66 ::= (list_66 seq_65)?

    seq_67 ::= COMMA type_spec

    list_68 ::= (list_68 seq_67)?

    seq_69 ::= type_spec list_68

    opt_70 ::= seq_69?

    seq_71 ::= COMMA restriction

    list_72 ::= (list_72 seq_71)?

    seq_73 ::= COMMA oper_decl

    list_74 ::= (list_74 seq_73)?

    seq_76 ::= COMMA oper_decl

    list_77 ::= (list_77 seq_76)?

    list_78 ::= (list_78 equate)?

    grp_75 ::= idn
              | idn HAS oper_decl list_77 list_78

    list_79 ::= (list_79 grp_75)?

    seq_80 ::= COMMA name

    list_81 ::= (list_81 seq_80)?

    opt_82 ::= STABLE?

    opt_83 ::= STABLE?

    opt_84 ::= STABLE?

    seq_85 ::= COMMA decl

    list_86 ::= (list_86 seq_85)?

    seq_87 ::= COMMA decl

    list_88 ::= (list_88 seq_87)?

    seq_89 ::= AT primaries

    opt_90 ::= seq_89?

    seq_91 ::= COMMA decl

    list_92 ::= (list_92 seq_91)?

    seq_93 ::= AT primaries

    opt_94 ::= seq_93?

    seq_95 ::= COMMA idn

    list_96 ::= (list_96 seq_95)?

    seq_97 ::= AT primaries

    opt_98 ::= seq_97?

    seq_99 ::= COMMA idn

    list_100 ::= (list_100 seq_99)?

    seq_101 ::= COMMA expression

    list_102 ::= (list_102 seq_101)?

    opt_103 ::= expression?

    seq_104 ::= AT primaries

    opt_105 ::= seq_104?

    list_106 ::= (list_106 coarm)?

    opt_107 ::= ABORT?

    opt_108 ::= ABORT?

    seq_109 ::= COMMA expression

    list_110 ::= (list_110 seq_109)?

    seq_111 ::= expression list_110

    opt_112 ::= seq_111?

    seq_113 ::= COMMA expression

    list_114 ::= (list_114 seq_113)?

    seq_115 ::= expression list_114

    opt_116 ::= seq_115?

    opt_117 ::= ABORT?

    seq_118 ::= COMMA expression

    list_119 ::= (list_119 seq_118)?

    seq_120 ::= expression list_119

    opt_121 ::= seq_120?

    opt_122 ::= ABORT?

    seq_123 ::= COMMA expression

    list_124 ::= (list_124 seq_123)?

    seq_125 ::= expression list_124

    opt_126 ::= seq_125?

    opt_127 ::= ABORT?

    opt_128 ::= ABORT?

    opt_129 ::= ABORT?

    seq_130 ::= COMMA name

    list_131 ::= (list_131 seq_130)?

    list_132 ::= (list_132 when_handler)?

    opt_133 ::= others_handler?

    seq_134 ::= COMMA decl

    list_135 ::= (list_135 seq_134)?

    seq_136 ::= FOREACH decl list_135 IN call

    list_137 ::= (list_137 seq_136)?

    seq_138 ::= COMMA decl

    list_139 ::= (list_139 seq_138)?

    seq_140 ::= COMMA idn

    list_141 ::= (list_141 seq_140)?

    seq_142 ::= ELSEIF expression THEN body

    list_143 ::= (list_143 seq_142)?

    seq_144 ::= ELSE body

    opt_145 ::= seq_144?

    list_146 ::= (list_146 tag_arm)?

    seq_147 ::= OTHERS COLON body

    opt_148 ::= seq_147?

    list_149 ::= (list_149 atag_arm)?

    seq_150 ::= OTHERS COLON body

    opt_151 ::= seq_150?

    list_152 ::= (list_152 atag_arm)?

    seq_153 ::= COMMA name

    list_154 ::= (list_154 seq_153)?

    seq_155 ::= idn COLON type_spec

    opt_156 ::= seq_155?

    seq_157 ::= COMMA name

    list_158 ::= (list_158 seq_157)?

    seq_159 ::= idn COLON type_spec

    list_160 ::= (list_160 seq_159)?

    seq_161 ::= COMMA name

    list_162 ::= (list_162 seq_161)?

    seq_163 ::= COMMA decl

    list_164 ::= (list_164 seq_163)?

    seq_165 ::= decl list_164

    list_166 ::= (list_166 seq_165)?

    seq_167 ::= COMMA name

    list_168 ::= (list_168 seq_167)?

    seq_169 ::= idn COLON type_spec

    list_170 ::= (list_170 seq_169)?

    list_171 ::= (list_171 equate)?

    list_172 ::= (list_172 statement)?

    seq_173 ::= COMMA field_spec

    list_174 ::= (list_174 seq_173)?

    seq_175 ::= COMMA field_spec

    list_176 ::= (list_176 seq_175)?

    seq_177 ::= COMMA field_spec

    list_178 ::= (list_178 seq_177)?

    seq_179 ::= COMMA field_spec

    list_180 ::= (list_180 seq_179)?

    seq_181 ::= COMMA field_spec

    list_182 ::= (list_182 seq_181)?

    seq_183 ::= COMMA field_spec

    list_184 ::= (list_184 seq_183)?

    seq_185 ::= COMMA type_spec

    list_186 ::= (list_186 seq_185)?

    seq_187 ::= type_spec list_186

    opt_188 ::= seq_187?

    opt_189 ::= returnz?

    opt_190 ::= signals?

    seq_191 ::= COMMA type_spec

    list_192 ::= (list_192 seq_191)?

    seq_193 ::= type_spec list_192

    opt_194 ::= seq_193?

    opt_195 ::= yields?

    opt_196 ::= signals?

    seq_197 ::= COMMA type_spec

    list_198 ::= (list_198 seq_197)?

    seq_199 ::= type_spec list_198

    opt_200 ::= seq_199?

    opt_201 ::= returnz?

    opt_202 ::= signals?

    seq_203 ::= COMMA type_spec

    list_204 ::= (list_204 seq_203)?

    seq_205 ::= type_spec list_204

    opt_206 ::= seq_205?

    opt_207 ::= returnz?

    opt_208 ::= signals?

    seq_209 ::= COMMA name

    list_210 ::= (list_210 seq_209)?

    seq_211 ::= COMMA actual_parm

    list_212 ::= (list_212 seq_211)?

    seq_213 ::= actual_parm list_212

    opt_214 ::= seq_213?

    seq_215 ::= COMMA opbinding

    list_216 ::= (list_216 seq_215)?

    seq_217 ::= opbinding list_216

    opt_218 ::= seq_217?

    seq_219 ::= WITH opt_218

    opt_220 ::= seq_219?

    seq_221 ::= COMMA name

    list_222 ::= (list_222 seq_221)?

    seq_224 ::= COMMA expression

    list_225 ::= (list_225 seq_224)?

    grp_223 ::= DOT name
               | expression list_225

    list_226 ::= (list_226 grp_223)?

    seq_227 ::= COMMA expression

    list_228 ::= (list_228 seq_227)?

    seq_229 ::= expression list_228

    opt_230 ::= seq_229?

    grp_231 ::= DOT name
               | expression

    list_232 ::= (list_232 grp_231)?

    seq_233 ::= COMMA bind_arg

    list_234 ::= (list_234 seq_233)?

    seq_235 ::= bind_arg list_234

    opt_236 ::= seq_235?

    seq_237 ::= COMMA field

    list_238 ::= (list_238 seq_237)?

    seq_239 ::= field list_238

    list_240 ::= (list_240 seq_239)?

    seq_241 ::= expression COLON

    opt_242 ::= seq_241?

    seq_243 ::= COMMA expression

    list_244 ::= (list_244 seq_243)?

    seq_245 ::= expression list_244

    opt_246 ::= seq_245?

    seq_247 ::= COMMA actual_parm

    list_248 ::= (list_248 seq_247)?

    seq_249 ::= actual_parm list_248

    opt_250 ::= seq_249?

    seq_251 ::= COMMA name

    list_252 ::= (list_252 seq_251)?
%End
