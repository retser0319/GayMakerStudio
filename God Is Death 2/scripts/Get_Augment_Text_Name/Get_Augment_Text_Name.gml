function Get_Augment_Text_Name(i){
    var augment = global.Card[i];

    if (augment == "Jump King") return "점프킹";
    else if (augment == "Trickster") return "재간둥이";
    else if (augment == "Acrobat") return "곡예사";
    else if (augment == "Bladestorm") return "칼날바람";
    else if (augment == "Lightfruit") return "빛빛열매";
    else if (augment == "Opportunity") return "기회";
    else if (augment == "Matryoshka") return "마트료시카";
    else if (augment == "Tiny Giant") return "꼬꼬마 거인";
    else if (augment == "Bloodlust") return "피바라기";
    else if (augment == "Shock Bomb") return "충격폭탄";
    else if (augment == "Momentum") return "가속도";
    else if (augment == "Shuriken") return "표창";
    else if (augment == "Greatsword") return "대검";
    else if (augment == "Trance") return "무아지경";

    return "";
}