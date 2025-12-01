function Set_Player_Augment(player){
	for (var i = 0; i < 3; i++) {
		var augment = global.Augment[i]
		
		if (augment == "Jump King") {
			player.jump_strength = -30
			player.augment_jump_king = true
		}
		else if (augment == "Trickster") {
		
		}
		else if (augment == "Acrobat") {
		
		}
		else if (augment == "Bladestorm") {
		
		}
		else if (augment == "Lightfruit") {
		
		}
		else if (augment == "Opportunity") {
		
		}
		else if (augment == "Matryoshka") {
		
		}
		else if (augment == "Tiny Giant") {
		
		}
		else if (augment == "Bloodlust") {
			player.augment_bloodlust = true
		}
		else if (augment == "Shock Bomb") {
		
		}
		else if (augment == "Momentum") {
		
		}
		else if (augment == "Shuriken") {
		
		}
		else if (augment == "Greatsword") {
		
		}
		else if (augment == "Trance") {
			player.augment_trance = true
		}
	}
	
}