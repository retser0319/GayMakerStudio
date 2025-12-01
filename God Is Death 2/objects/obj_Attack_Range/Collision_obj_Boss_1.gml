var tag = instance_create_layer(other.x,other.y,"Effect",obj_Tag)
var player = instance_nearest(x,y, obj_Nietzsche)
var damage = global.PlayerDamage

if (player.augment_jump_king and player.vspd > 0) damage = damage + damage * (player.vspd / 20)

tag.damage = global.PlayerDamage
global.BossHP -= global.PlayerDamage

if (player.augment_bloodlust) {
	global.PlayerHP += 2
	player.lastHP = global.PlayerHP
}

instance_destroy(self)
