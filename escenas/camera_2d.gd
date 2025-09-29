extends Camera2D

var seguir
func _ready() -> void:
	seguir = $"../player"

func _process(delta: float) -> void:
	if seguir!=null:
		position=seguir.position
