package abbey.functions

import future.keywords.if

test_expired if {
    not expire_after("1m") with data.system.abbey.target.grant.approved_at as "2023-01-01T01:00:00Z"
        with time.now_ns as 1672534900000000000
}

test_expired if {
    not expire_after("1m") with data.system.abbey.target.grant.approved_at as "2023-01-01T01:00:00Z"
        with time.now_ns as 1672534860000000000
}

test_not_expired if {
    expire_after("1m") with data.system.abbey.target.grant.approved_at as "2023-01-01T01:00:00Z"
        with time.now_ns as 0
}
