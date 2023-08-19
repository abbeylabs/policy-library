package abbey.functions

import future.keywords.if

test_expired if {
    not expire_at("2023-01-01T02:00:00Z") with data.system.abbey.target.grant.approved_at as "2023-01-01T01:00:00Z"
        with time.now_ns as 1672538500000000000
}

test_expired if {
    not expire_at("2023-01-01T01:00:00Z") with data.system.abbey.target.grant.approved_at as "2023-01-01T01:00:00Z"
        with time.now_ns as 1672538400000000000
}

test_not_expired if {
    expire_at("2023-01-01T01:00:00Z") with data.system.abbey.target.grant.approved_at as "2023-01-01T01:00:00Z"
        with time.now_ns as 0
}