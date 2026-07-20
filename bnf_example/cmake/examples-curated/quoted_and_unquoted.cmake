# quoted args, paths with dots, foreach
message("First Argument")
message("multi
line quoted")
foreach(arg NoSpace This Divides)
  message("${arg}")
endforeach()
set(x a b)
