index = 0

card[0] = instance_find(obj_Card,0)
card[1] = instance_find(obj_Card,1)
card[2] = instance_find(obj_Card,2)

Random_Augment()

for (var i = 0; i < 3; i++){
	card[i].num = i	
}