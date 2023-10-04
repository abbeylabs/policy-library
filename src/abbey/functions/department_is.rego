package abbey.functions

import future.keywords.if

# Function that checks if the user's department is equal to the given value
# This function compares against data under the `system.abbey.identities.directory_sync_users` namespace.
department_is(department) := live if {
    live := department == data.system.abbey.identities.directory_sync_users.custom_attributes.department_name
}
