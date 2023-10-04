package abbey.functions

import future.keywords.if

test_in_group if {
    in_group("Engineers") with data.system.abbey.group_memberships as ["Engineers"]
}

test_in_group if {
    in_group("Engineers") with data.system.abbey.group_memberships as ["Managers", "Engineers"]
}

test_not_in_group if {
    not in_group("Engineers") with data.system.abbey.group_memberships as ["Managers"]
}

test_not_in_group if {
    not in_group("Engineers") with data.system.abbey.group_memberships as ["Managers", "Readers"]
}
