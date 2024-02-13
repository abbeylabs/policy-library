package abbey.functions_test

import data.abbey.functions
import rego.v1

test_after_expired_duration if {
	not functions.expire_after("1m") with data.system.abbey.target.grant.approved_at as "2023-01-01T01:00:00Z"
		with time.now_ns as 1672534900000000000
}

test_at_expired_duration if {
	not functions.expire_after("1m") with data.system.abbey.target.grant.approved_at as "2023-01-01T01:00:00Z"
		with time.now_ns as 1672534860000000000
}

test_before_expired_duration if {
	functions.expire_after("1m") with data.system.abbey.target.grant.approved_at as "2023-01-01T01:00:00Z"
		with time.now_ns as 0
}
