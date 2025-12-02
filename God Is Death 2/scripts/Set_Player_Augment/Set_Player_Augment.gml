function Set_Player_Augment(player){
	for (var i = 0; i < 3; i++) {
		var augment = global.Augment[i]
		
		if (augment == "Jump King") {
			player.jump_strength -= 5
			player.augment_jump_king = true
		}
		else if (augment == "Trickster") {
			player.dash_req /= 2
			player.jump_max += 2
			player.augment_trickster = true
		}
		else if (augment == "Acrobat") {
			player.augment_Acrobat = true
		}
		else if (augment == "Bladestorm") {
			player.moveSpeed += 1
			player.augment_bladestorm = true
		}
		else if (augment == "Lightfruit") {
			player.moveSpeed += 2
			player.jump_strength -= 5
		}
		else if (augment == "Opportunity") {
			player.augment_opportunity = true
			player.shield = true
		}
		else if (augment == "Matryoshka") {
			player.augment_matryoshka = true
			player.life = 2
		}
		else if (augment == "Tiny Giant") {
			player.attackDelay -= 10
			global.PlayerMaxHP += 50
			global.PlayerHP += 50
			player.moveSpeed += 1
			player.size /= 2
		}
		else if (augment == "Bloodlust") {
			player.augment_bloodlust = true
		}
		else if (augment == "Shock Bomb") {
			player.augment_shock_bomb = true
		}
		else if (augment == "Momentum") {
			player.augment_momentum = true
		}
		else if (augment == "Shuriken") {
			player.augment_shuriken = true
			player.alarm[4] = 30
		}
		else if (augment == "Greatsword") {
			global.PlayerDamage += 40
			player.attackDelay += 45
		}
		else if (augment == "Trance") {
			player.augment_trance = true
		}
	}
	
}