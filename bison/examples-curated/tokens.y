%token ID NUMBER
%%
program : stmt
        | program stmt
        ;
stmt : ID
     | NUMBER
     ;
%%
