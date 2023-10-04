package abbey.functions

import future.keywords.if
import future.keywords.in

# Function that checks if the requester is a member of the group `group_name`
# The `group_name` input is a string
# Valid group names are alphanumeric strings
# This function compares against data under the `system.abbey.group_memberships` namespace.
in_group(group_name) := live if {
        live := group_name in data.system.abbey.group_memberships
}
