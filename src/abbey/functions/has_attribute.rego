import future.keywords.if

has_attribute(name, value) := true if {
	data.system.abbey.identities.directory_sync_users.custom_attributes[name] == value
}
