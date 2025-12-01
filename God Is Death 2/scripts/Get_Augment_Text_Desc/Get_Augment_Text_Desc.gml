function Get_Augment_Text_Desc(i){
	var augment = global.Card[i];

    if (augment == "Jump King") return "점프력 상승, 떨어지는 속도에 비례해 추가 피해";
    else if (augment == "Trickster") return "대쉬 소모량 감소, 같은 벽에서 연속으로 점프 가능";
    else if (augment == "Acrobat") return "벽에 붙거나, 대쉬하면 공중공격 충전됨";
    else if (augment == "Bladestorm") return "이동속도가 증가하고 대쉬 도중 부딪히면 피해를 입힘";
    else if (augment == "Lightfruit") return "이동속도가 크게 증가함";
    else if (augment == "Opportunity") return "5초간 피해를 받지 않으면 보호막을 생성함";
    else if (augment == "Matryoshka") return "매 스테이지마다 사망시 50%, 25%의 체력으로 2번 부활함";
    else if (augment == "Tiny Giant") return "공격속도, 체력, 이동속도가 증가하고 크기가 작아짐 (구현완료)";
    else if (augment == "Bloodlust") return "공격 적중시 체력을 2 회복함";
    else if (augment == "Shock Bomb") return "피격시 폭발을 일으켜 주변에 피해를 입힘";
    else if (augment == "Momentum") return "이동속도에 비례해 추가피해를 입힘";
    else if (augment == "Shuriken") return "3초마다 보스를 향해 표창을 던짐";
    else if (augment == "Greatsword") return "공격속도가 느려지고 공격력이 크게 증가함";
    else if (augment == "Trance") return "움직이지않고 공격시 공격속도가 증가함. 움직이면 초기화";

    return "";
}