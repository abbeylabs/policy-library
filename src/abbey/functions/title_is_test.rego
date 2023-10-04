package abbey.functions

import future.keywords.if

test_title_is if {
    title_is("Engineer") with data.system.abbey.identities.directory_sync_users as {"job_title" : "Engineer", "custom_attributes": {"department_name" : "Engineering"}}
}

test_not_title_is if {
    not title_is("Manager") with data.system.abbey.identities.directory_sync_users as {"job_title" : "Engineer", "custom_attributes": {"department_name" : "Engineering"}}
}
