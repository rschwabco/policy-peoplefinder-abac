package peoplefinder.POST.api.users.__id

default allowed = false

default visible = true

default enabled = false

allowed {
	props = input.user.attributes.properties
	props.department == "Operations"
	props.title == "IT Manager"
}

allowed {
    dir.is_manager_of(input.user.id, input.resource.id)
}

enabled {
	allowed
}

