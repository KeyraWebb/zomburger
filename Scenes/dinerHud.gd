extends CanvasLayer

@onready var orderTooltip = $orderToolTip
@onready var serveTooltip = $serveToolTip

func _ready() -> void:
	serveTooltip.visible = false
	orderTooltip.visible = false

func _on_order_zone_body_entered(body: Node2D) -> void:
	orderTooltip.visible = true

func _on_order_zone_body_exited(body: Node2D) -> void:
	orderTooltip.visible = false

func _on_serve_zone_body_entered(body: Node2D) -> void:
	serveTooltip.visible = true

func _on_serve_zone_body_exited(body: Node2D) -> void:
	serveTooltip.visible = false
