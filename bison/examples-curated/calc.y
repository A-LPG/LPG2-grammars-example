%token NUM
%left PLUS MINUS
%%
input : line
      ;
line : exp
     ;
exp : NUM
    | exp PLUS exp
    | exp MINUS exp
    ;
%%
