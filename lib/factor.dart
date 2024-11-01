import 'dart:typed_data';
import 'dart:ui';

import 'package:bluetooth_classic/bluetooth_classic.dart';
import 'package:bluetooth_classic/models/device.dart';

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



//블루투스 관련 부분
Uint8List data = Uint8List(0);

String S = "0";
String preS = "0";

String platformVersion = 'Unknown';
final bluetoothClassicPlugin = BluetoothClassic();
List<Device> devices = [];
List<Device> discoveredDevices = [];
bool scanning = false;
int deviceStatus = Device.disconnected;