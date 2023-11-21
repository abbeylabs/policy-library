package abbey.functions

import future.keywords.if

# Function which checks whether a user has a given attribute.
# Attributes are found under a custom_attributes object under the
# abbey.identities object.
has_attribute(name, value) := true if {
	data.system.abbey.identities.directory_sync_users.custom_attributes[name] == value
}
