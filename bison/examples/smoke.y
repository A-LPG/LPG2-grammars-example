%token NUM
%start input
%%
input : expr ;
expr : NUM ;
%%
