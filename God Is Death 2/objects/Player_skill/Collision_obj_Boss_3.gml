if (!can_attack) return
var tag = instance_create_layer(other.x,other.y,"Effect",obj_Tag)
var player = instance_nearest(x,y, obj_Nietzsche)
var damage = global.PlayerDamage

if (player.augment_jump_king and player.vspd > 0) damage = damage + damage * (player.vspd / 15)
if (player.augment_momentum) damage = damage + (damage * (player.moveSpeed - 1))

tag.damage = damage
global.BossHP -= damage

if (player.augment_bloodlust) {
	global.PlayerHP += 2
	player.lastHP = global.PlayerHP
}

can_attack = false

