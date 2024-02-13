package time

import data.abbey.functions

allow[msg] {
    functions.expire_after("24h")
    msg := "granting access for 1 day"
}
