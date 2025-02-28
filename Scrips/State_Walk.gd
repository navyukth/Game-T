class_name State_Walk extends State

@export var move_speed :float =50.0
@onready var idle: State = $StateMachine/Idle

##what happends when the player enters this state?
func Enter() -> void:
	player.UpdateAnimation("Walk")
	print ("Entering Walk State")
	pass

##what happens when the player exitx this state
func Exit() -> void:
	pass
	
##what happens during the _process update in the state
func Process(_delta: float) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	
	player.velocity = player.direction * move_speed
	
	if player.SetDirection():
		player.UpdateAnimation("Walk")
	return null
	
##what happens during the _physcis_process update in this state
func Physics(_delta: float) -> State:
	return null

##what happens with input events in this state
func HandleInput(_event: InputEvent) -> State:
	return null
