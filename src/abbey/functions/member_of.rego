package abbey.functions

import rego.v1

apps := [
	"googleworkspace",
	"okta",
	"google",
]

# METADATA
# title: Member Of
# description: |
#  Function which checks whether a user has a specific group membership.
#  This function will iterate through all of a user's imported `apps` to determine
#  if any of the `group_id`s match the user's group memberships.
# related_resources:
# - ref: https://docs.abbey.io/reference/access-policies/types-of-access-policies
# entrypoint: false
member_of(group_id) if {
	some app in apps # Iterate over each app.
	user_groups := data.user[app] # Get each app of the user.
	some group in user_groups.groups # For the app, get the user's group memberships.
	group_id in group # Check if the group_id is one of the keys of the group object.
}
