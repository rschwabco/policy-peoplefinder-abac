package peoplefinder.PUT.api.users.__id

default allowed = false

default visible = true

default enabled = true

allowed {
	props = input.user.attributes.properties
	props.department == "Operations"
	props.title == "IT Manager"
}

allowed {
	input.user.id == input.resource.id
}
