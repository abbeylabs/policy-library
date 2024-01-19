package abbey.functions_test

import data.abbey.functions
import future.keywords.if

fixture := {
	"googleworkspace": {"groups": [
		{"id": "Engineering"},
		{"id": "R&D"},
	]},
	"okta": {"groups": [
		{"id": "123"},
		{"id": "456"},
	]},
}

test_member_of_googleworkspace_engineering_group if {
	functions.member_of("Engineering") with data.user as fixture
}

test_member_of_okta_group if {
	functions.member_of("123") with data.user as fixture
}

# Tests if the user is a member of a group within Google. However, technically, the way we implement
# the `member_of` function entails a lookup against all of the user's `apps`. This means this test
# will also produce `false` if the group doesn't exist as a result of the group not being imported.
test_not_member_of_googleworkspace_engineering_group if {
	not functions.member_of("Marketing") with data.user as fixture
}

# Tests if the user is a member of a group within Okta. However, technically, the way we implement
# the `member_of` function entails a lookup against all of the user's `apps`. This means this test
# will also produce `false` if the group doesn't exist as a result of the group not being imported.
test_not_member_of_okta_group if {
	not functions.member_of("789") with data.user as fixture
}

# Tests if the user is a member of a group, but the group is not imported.
test_unimported_group if {
	not functions.member_of("unimported") with data.user as fixture
}
