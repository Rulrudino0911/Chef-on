import 'dart:ui';

List<FoodList> Myfood = []; //myfood listview에 쓸 리스트
List<FoodList> Recommand = []; //Recommand listview에 쓸 리스트

class FoodList {
  FoodList({required this.name, required this.img});

  String name;
  Image img;
}
