var tag = instance_create_layer(other.x,other.y,"Effect",obj_Tag)
tag.damage = global.PlayerDamage
global.BossHP -= global.PlayerDamage

instance_destroy(self)
