package time

import data.abbey.functions

allow[msg] {
    functions.expire_after("8h")
    msg := "granting access for 8 hours"
}
