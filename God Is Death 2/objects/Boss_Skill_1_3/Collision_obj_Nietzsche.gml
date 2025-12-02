if (!can_attack) return
if (other.x > self.x)
	other.hspd = 100
else
	other.hspd = -100
can_attack = false