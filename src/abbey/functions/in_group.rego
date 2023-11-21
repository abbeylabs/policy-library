package abbey.functions

import future.keywords.if
import future.keywords.in

# Function which checks whether a user is in a given group.
# Groups are kept within an object called group_memberships in the
# system.abbey object
in_group(group_name) := true if {
	group_name in data.system.abbey.group_memberships
}
