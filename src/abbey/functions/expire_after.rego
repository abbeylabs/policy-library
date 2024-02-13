package abbey.functions

import rego.v1

# METADATA
# title: Expire After
# description: |
#  Function that checks if the time at `ts` has expired, relative to the time at `approved_at`.
#  The `ts` input is a string that can be parsed by Rego's native `time.parse_duration_ns` function.
#  Valid string values are derived from https://pkg.go.dev/time#ParseDuration.
#  Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".
#  This function compares against data under the `system.abbey.target` namespace.
# related_resources:
# - ref: https://docs.abbey.io/use-cases/time-based-access/expire-after-a-duration
# entrypoint: false
expire_after(ts) := live if {
	expires_after := time.parse_duration_ns(ts)
	approved_at := time.parse_rfc3339_ns(data.system.abbey.target.grant.approved_at)
	expires_at := approved_at + expires_after
	now := time.now_ns()
	live := (now - expires_at) < 0
}
