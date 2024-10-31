import 'dart:ui';

List<FoodList> Myfood = []; //myfood listview에 쓸 리스트
List<FoodList> Recommand = []; //Recommand listview에 쓸 리스트

class FoodList {
  FoodList({required this.label,required this.name, required this.imgPath,required this.FPath, required this.ExTem, required this.ExMin});

  String label; //영어 이름
  String name; //한글 이름
  String imgPath; //이미지 위치
  String FPath; //txt 위치
  String ExTem; //온도 예시
  String ExMin; //시간 예시
}
