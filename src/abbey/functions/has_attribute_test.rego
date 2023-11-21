package abbey.functions

import future.keywords.if

test_has_cost_center_engineering if {
    has_attribute("cost_center_name", "Engineering") with data.system.abbey.identities.directory_sync_users.custom_attributes as {"department_name": "Engineering", "cost_center_name": "Engineering", "employee_type": "Manager"}
}

test_has_department_engineering if {
    has_attribute("department_name", "Engineering") with data.system.abbey.identities.directory_sync_users.custom_attributes as {"department_name": "Engineering", "cost_center_name": "Engineering", "employee_type": "Manager"}
}

test_does_not_have_department_marketing if {
    not has_attribute("department_name", "Marketing") with data.system.abbey.identities.directory_sync_users.custom_attributes as {"department_name": "Engineering", "cost_center_name": "Engineering", "employee_type": "Manager"}
}

test_does_not_have_employee_type_ic if {
    not has_attribute("employee_type", "IC") with data.system.abbey.identities.directory_sync_users.custom_attributes as {"department_name": "Engineering", "cost_center_name": "Engineering", "employee_type": "Manager"}
}
