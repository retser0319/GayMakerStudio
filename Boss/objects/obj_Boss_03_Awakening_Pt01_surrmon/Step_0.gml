
if(count%3==0){
	instance_create_depth(obj_Boss_03_01.x,obj_Boss_03_01.y-100,-999,obj_Boss_03_Awakening_Pt01,{direction:43*count})

}
if(global.Boss3Hp!=0)
count++
else
{
instance_destroy(obj_draw_Boss03)
instance_destroy(obj_Boss_03_Awake_tooth_surrmon)
instance_destroy(self)
}





