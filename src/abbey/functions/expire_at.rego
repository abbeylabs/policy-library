package abbey.functions

import future.keywords.if

# Function that checks if the time at `ts` has expired, relative to the time at `approved_at`.
# The `ts` input is a string representing the RFC 3339 date time format.
# This function compares against data under the `system.abbey.target` namespace.
expire_at(ts) := live if {
	expires_at := time.parse_rfc3339_ns(ts)
	now := time.now_ns()
	live := (now - expires_at) < 0
}
