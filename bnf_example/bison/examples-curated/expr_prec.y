%token ID NUM
%left PLUS MINUS
%left STAR
%%
expr : term
     | expr PLUS term
     | expr MINUS term
     ;
term : factor
     | term STAR factor
     ;
factor : ID
      | NUM
      ;
%%
