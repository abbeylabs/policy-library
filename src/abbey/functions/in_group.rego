package abbey.functions

import future.keywords.if
import future.keywords.in

in_group(group_name) := true if {
	some group in data.system.abbey.group_memberships
	group == group_name
}
