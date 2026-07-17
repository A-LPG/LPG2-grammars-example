# simple cmake example for parse harness
add_executable(hello world.c)

if(FALSE AND (FALSE OR (HELLO WORLD) TRUE))
message(STATUS hello)
endif()

set(srcs a.c b.c c.c)
set(x a b)
