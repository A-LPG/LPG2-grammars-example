package policy

default allow = false

allow = true {
    input.role == "admin"
}
