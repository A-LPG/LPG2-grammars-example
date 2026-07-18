-- AUTO-GENERATED from antlr/grammars-v4 antlr/antlr4 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AntlrAntlr4Parser
%options package=lpg.grammars.antlr.antlr4
%options template=dtParserTemplateF.gi
%options import_terminals=AntlrAntlr4Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    grammarSpec
%End

%Rules
    grammarSpec ::= grammarDecl listn0001 rules listn0002

    grammarDecl ::= grammarType identifier SEMI

    grammarType ::= LEXER GRAMMAR
           | PARSER GRAMMAR
           | GRAMMAR

    prequelConstruct ::= optionsSpec
           | delegateGrammars
           | tokensSpec
           | channelsSpec
           | action_

    optionsSpec ::= IDENTIFIER LBRACE listn0004 RBRACE

    option ::= identifier EQ optionValue

    optionValue ::= identifier listn0006
           | STRING
           | actionBlock
           | NUMBER

    delegateGrammars ::= IMPORT delegateGrammar listn0008 SEMI

    delegateGrammar ::= identifier EQ identifier
           | identifier

    tokensSpec ::= IDENTIFIER LBRACE optn0009 RBRACE

    channelsSpec ::= IDENTIFIER LBRACE optn0010 RBRACE

    idList ::= identifier listn0012 optn0013

    action_ ::= AT optn0015 identifier actionBlock

    actionScopeName ::= identifier
           | LEXER
           | PARSER

    actionBlock ::= LBRACE

    argActionBlock ::= LBRACKET listn0016 RBRACKET

    modeSpec ::= MODE identifier SEMI listn0017

    rules ::= listn0018

    ruleSpec ::= parserRuleSpec
           | lexerRuleSpec

    parserRuleSpec ::= optn0019 IDENTIFIER optn0020 optn0021 optn0022 optn0023 listn0024 COLON ruleBlock SEMI exceptionGroup

    exceptionGroup ::= listn0025 optn0026

    exceptionHandler ::= CATCH argActionBlock actionBlock

    finallyClause ::= FINALLY actionBlock

    rulePrequel ::= optionsSpec
           | ruleAction

    ruleReturns ::= RETURNS argActionBlock

    throwsSpec ::= THROWS qualifiedIdentifier listn0028

    localsSpec ::= LOCALS argActionBlock

    ruleAction ::= AT identifier actionBlock

    ruleModifiers ::= listn0029

    ruleModifier ::= PUBLIC
           | PRIVATE
           | PROTECTED
           | FRAGMENT

    ruleBlock ::= ruleAltList

    ruleAltList ::= labeledAlt listn0031

    labeledAlt ::= alternative optn0033

    lexerRuleSpec ::= optn0034 IDENTIFIER optn0035 COLON lexerRuleBlock SEMI

    lexerRuleBlock ::= lexerAltList

    lexerAltList ::= lexerAlt listn0037

    lexerAlt ::= lexerElements optn0038
           | $empty

    lexerElements ::= listn0039
           | $empty

    lexerElement ::= lexerAtom optn0040
           | lexerBlock optn0041
           | actionBlock optn0042

    lexerBlock ::= LPAREN lexerAltList RPAREN

    lexerCommands ::= ARROW lexerCommand listn0044

    lexerCommand ::= lexerCommandName LPAREN lexerCommandExpr RPAREN
           | lexerCommandName

    lexerCommandName ::= identifier
           | MODE

    lexerCommandExpr ::= identifier
           | NUMBER

    altList ::= alternative listn0046

    alternative ::= optn0047 listn0048
           | $empty

    element ::= labeledElement grpn0049
           | atom grpn0050
           | ebnf
           | actionBlock optn0051 optn0052

    predicateOptions ::= LT predicateOption listn0054 GT

    predicateOption ::= elementOption
           | identifier EQ grpn0055

    labeledElement ::= identifier grpn0056 grpn0057

    ebnf ::= block optn0058

    blockSuffix ::= ebnfSuffix

    ebnfSuffix ::= QUESTION optn0059
           | STAR optn0060
           | PLUS optn0061

    lexerAtom ::= characterRange
           | terminalDef
           | notSet
           | STRING
           | wildcard

    atom ::= terminalDef
           | ruleref
           | notSet
           | wildcard

    wildcard ::= DOT optn0062

    notSet ::= NOT setElement
           | NOT blockSet

    blockSet ::= LPAREN setElement listn0064 RPAREN

    setElement ::= IDENTIFIER optn0065
           | STRING optn0066
           | characterRange
           | STRING

    block ::= LPAREN optn0070 altList RPAREN

    ruleref ::= IDENTIFIER optn0071 optn0072

    characterRange ::= STRING RANGE STRING

    terminalDef ::= IDENTIFIER optn0073
           | STRING optn0074

    elementOptions ::= LT elementOption listn0076 GT

    elementOption ::= qualifiedIdentifier
           | identifier EQ grpn0077

    identifier ::= IDENTIFIER

    qualifiedIdentifier ::= identifier listn0079

    listn0001 ::= $empty
           | listn0001 prequelConstruct

    listn0002 ::= $empty
           | listn0002 modeSpec

    seqn0003 ::= option SEMI

    listn0004 ::= $empty
           | listn0004 seqn0003

    seqn0005 ::= DOT identifier

    listn0006 ::= $empty
           | listn0006 seqn0005

    seqn0007 ::= COMMA delegateGrammar

    listn0008 ::= $empty
           | listn0008 seqn0007

    optn0009 ::= idList
           | $empty

    optn0010 ::= idList
           | $empty

    seqn0011 ::= COMMA identifier

    listn0012 ::= $empty
           | listn0012 seqn0011

    optn0013 ::= COMMA
           | $empty

    seqn0014 ::= actionScopeName COLONCOLON

    optn0015 ::= seqn0014
           | $empty

    listn0016 ::= $empty
           | listn0016 IDENTIFIER

    listn0017 ::= $empty
           | listn0017 lexerRuleSpec

    listn0018 ::= $empty
           | listn0018 ruleSpec

    optn0019 ::= ruleModifiers
           | $empty

    optn0020 ::= argActionBlock
           | $empty

    optn0021 ::= ruleReturns
           | $empty

    optn0022 ::= throwsSpec
           | $empty

    optn0023 ::= localsSpec
           | $empty

    listn0024 ::= $empty
           | listn0024 rulePrequel

    listn0025 ::= $empty
           | listn0025 exceptionHandler

    optn0026 ::= finallyClause
           | $empty

    seqn0027 ::= COMMA qualifiedIdentifier

    listn0028 ::= $empty
           | listn0028 seqn0027

    listn0029 ::= ruleModifier
           | listn0029 ruleModifier

    seqn0030 ::= PIPE labeledAlt

    listn0031 ::= $empty
           | listn0031 seqn0030

    seqn0032 ::= HASH identifier

    optn0033 ::= seqn0032
           | $empty

    optn0034 ::= FRAGMENT
           | $empty

    optn0035 ::= optionsSpec
           | $empty

    seqn0036 ::= PIPE lexerAlt

    listn0037 ::= $empty
           | listn0037 seqn0036

    optn0038 ::= lexerCommands
           | $empty

    listn0039 ::= lexerElement
           | listn0039 lexerElement

    optn0040 ::= ebnfSuffix
           | $empty

    optn0041 ::= ebnfSuffix
           | $empty

    optn0042 ::= QUESTION
           | $empty

    seqn0043 ::= COMMA lexerCommand

    listn0044 ::= $empty
           | listn0044 seqn0043

    seqn0045 ::= PIPE alternative

    listn0046 ::= $empty
           | listn0046 seqn0045

    optn0047 ::= elementOptions
           | $empty

    listn0048 ::= element
           | listn0048 element

    grpn0049 ::= ebnfSuffix
           | $empty

    grpn0050 ::= ebnfSuffix
           | $empty

    optn0051 ::= QUESTION
           | $empty

    optn0052 ::= predicateOptions
           | $empty

    seqn0053 ::= COMMA predicateOption

    listn0054 ::= $empty
           | listn0054 seqn0053

    grpn0055 ::= actionBlock
           | NUMBER
           | STRING

    grpn0056 ::= EQ
           | PLUSEQ

    grpn0057 ::= atom
           | block

    optn0058 ::= blockSuffix
           | $empty

    optn0059 ::= QUESTION
           | $empty

    optn0060 ::= QUESTION
           | $empty

    optn0061 ::= QUESTION
           | $empty

    optn0062 ::= elementOptions
           | $empty

    seqn0063 ::= PIPE setElement

    listn0064 ::= $empty
           | listn0064 seqn0063

    optn0065 ::= elementOptions
           | $empty

    optn0066 ::= elementOptions
           | $empty

    optn0067 ::= optionsSpec
           | $empty

    listn0068 ::= $empty
           | listn0068 ruleAction

    seqn0069 ::= optn0067 listn0068 COLON

    optn0070 ::= seqn0069
           | $empty

    optn0071 ::= argActionBlock
           | $empty

    optn0072 ::= elementOptions
           | $empty

    optn0073 ::= elementOptions
           | $empty

    optn0074 ::= elementOptions
           | $empty

    seqn0075 ::= COMMA elementOption

    listn0076 ::= $empty
           | listn0076 seqn0075

    grpn0077 ::= qualifiedIdentifier
           | STRING
           | NUMBER

    seqn0078 ::= DOT identifier

    listn0079 ::= $empty
           | listn0079 seqn0078

%End
