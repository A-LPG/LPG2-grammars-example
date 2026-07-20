package app

allow = true {
    input.user == "alice"
    input.action == "read"
}

deny {
    input.user == "bob"
}
