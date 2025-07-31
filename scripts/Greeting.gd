extends CanvasLayer
@export var greetingLabel: Label 

func _ready():
	if WizardCore.Auth.uid == "":
		WizardCore.Auth.authenticated.connect(_on_auth)
	else:
		_on_auth(WizardCore.Auth.uid)

func _on_auth(uid:String):
	greetingLabel.text = "Hello, " + uid + " 👋"
