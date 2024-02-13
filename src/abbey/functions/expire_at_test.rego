package abbey.functions_test

import data.abbey.functions
import rego.v1

test_after_expired_at_threshold if {
	not functions.expire_at("2023-01-01T02:00:00Z") with data.system.abbey.target.grant.approved_at as "2023-01-01T01:00:00Z"
		with time.now_ns as 1672538500000000000
}

test_on_expired_at_threshold if {
	not functions.expire_at("2023-01-01T01:00:00Z") with data.system.abbey.target.grant.approved_at as "2023-01-01T01:00:00Z"
		with time.now_ns as 1672538400000000000
}

test_before_expired_at_threshold if {
	functions.expire_at("2023-01-01T01:00:00Z") with data.system.abbey.target.grant.approved_at as "2023-01-01T01:00:00Z"
		with time.now_ns as 0
}
