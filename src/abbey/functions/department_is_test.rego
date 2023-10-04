package abbey.functions

import future.keywords.if

test_department_is if {
    department_is("Engineering") with data.system.abbey.identities.directory_sync_users as {"job_title" : "Engineer", "custom_attributes": {"department_name" : "Engineering"}}
}

test_not_department_is if {
    not department_is("Management") with data.system.abbey.identities.directory_sync_users as {"job_title" : "Engineer", "custom_attributes": {"department_name" : "Engineering"}}
}
