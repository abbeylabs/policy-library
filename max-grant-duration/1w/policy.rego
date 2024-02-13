package time

import data.abbey.functions

allow[msg] {
    functions.expire_after("168h")
    msg := "granting access for 1 week"
}
