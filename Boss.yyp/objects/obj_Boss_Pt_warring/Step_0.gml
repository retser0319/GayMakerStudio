//global.SparePos=obj_Boss_Pt_warring_surmmon.count;
if(count >2){
 instance_create_depth((global.SparePos-1)*440,0,-1,obj_Boss_Pt_thunder)
 instance_destroy(self)
}




