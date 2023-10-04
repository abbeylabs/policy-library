package abbey.functions

import future.keywords.if

# Function that checks if the user's title is equal to the given value
# This function compares against data under the `system.abbey.identities.directory_sync_users` namespace.
title_is(title) := live if {
    live := title == data.system.abbey.identities.directory_sync_users.job_title
}
