extends KinematicBody2D

var speed : int = 200
var jumpforce : int = 900
var gravity : int = 800

#isso é a velocidade. Ela é guardada em um Vector2, que consegue armazenar um valor de x e um de y.
var vel : Vector2 = Vector2()

onready var sprite = $AnimatedSprite

#isso é uma função de gravidade que já existe no Godot.
func _physics_process(delta):
	vel.x = 0
	#isso vai checar se o botão foi pressionado e executar a ação.
	if Input.is_action_pressed("move_left"):
		vel.x -= speed
		$AnimatedSprite.play("anda")
	if Input.is_action_pressed("move_right"):
		vel.x += speed
		$AnimatedSprite.play("anda")
	else:
		$AnimatedSprite.play("para")

#isso eu não entendi muito
	move_and_slide(vel, Vector2.UP)
	
	#isso faz a gravidade funcionar. Basicamente, a velocidade no eixo y vai ser a gravidade setada (800) * delta (1/60)
	vel.y += gravity * delta
	
	#isso faz pular.
	if Input .is_action_pressed ("jump") and is_on_floor():
		vel.y -= jumpforce
	
	#Quando a velocidade for negativa(esquerda) o sprite vira, e se for positiva(direita) não vira.
	if vel.x < 0:
		$AnimatedSprite.flip_h = true
		
	if vel.x > 0:
		$AnimatedSprite.flip_h = false
	
