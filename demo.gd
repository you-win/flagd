extends CanvasLayer

const Flagd = preload("res://addons/flagd/flagd.gd")

#-----------------------------------------------------------------------------#
# Builtin functions                                                           #
#-----------------------------------------------------------------------------#

func _init() -> void:
	OS.center_window()
	
	var flagd = Flagd.new()
	
	var parser: Flagd.Parser = flagd.new_parser({"description": "wew"})
	
	parser.add_argument({
		"name": "test-arg",
		"description": "This is a test argument",
		"type": TYPE_STRING,
		"default": "Hello world!"
	})
	
	parser.add_argument({
		"name": "-int",
		"description": "Some integer",
		"type": TYPE_INT,
	})
	
	parser.add_argument({
		"name": "--float",
		"aliases": ["--woo"],
		"description": "A float",
		"type": TYPE_REAL
	})
	
	print(parser.parse())

func _ready() -> void:
	get_tree().quit()

#-----------------------------------------------------------------------------#
# Connections                                                                 #
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# Private functions                                                           #
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# Public functions                                                            #
#-----------------------------------------------------------------------------#
