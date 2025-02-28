class_name State_Idle extends State

@onready var walk: State_Walk = $"../Walk"

##what happends when the player enters this state?
func Enter() -> void:
	player.UpdateAnimation("Idle")
	print ("Entering Idle State")
	pass

##what happens when the player exitx this state
func Exit() -> void:
	pass
	
##what happens during the _process update in the state
func Process(_delta: float) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	player.velocity = Vector2.ZERO
	return null
	
##what happens during the _physcis_process update in this state
func Physics(_delta: float) -> State:
	return null

##what happens with input events in this state
func HandleInput(_event: InputEvent) -> State:
	return null
