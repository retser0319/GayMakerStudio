function Add_Augment(i){
	var augment = global.Card[i];
	
	for (var j = 0; j < 3; j++) {
		if (global.Augment[j] == "") {
			global.Augment[j] = augment
			break
		}
	}
}
