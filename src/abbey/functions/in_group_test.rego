package abbey.functions

import future.keywords.if

test_in_group_engineering if {
    in_group("Engineering") with data.system.abbey.group_memberships as ["Engineering", "R&D"]
}

test_not_in_group_marketing if {
    not in_group("Marketing") with data.system.abbey.group_memberships as ["Engineering", "R&D"]
}
