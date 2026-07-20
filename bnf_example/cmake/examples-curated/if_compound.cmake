# compound arguments and nested parens (from cmake-language.7)
if(FALSE AND (FALSE OR (HELLO WORLD) TRUE))
message(STATUS hello)
endif()
