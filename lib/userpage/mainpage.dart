import 'dart:io';
import 'package:chef_on/cooking/cookingInfo.dart';
import 'package:chef_on/factor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:chef_on/factor.dart';
import 'package:permission_handler/permission_handler.dart';

// Home 페이지
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<int> checkExists() async { //파일 읽고 쓰는부분 // 건들지않는게 좋음

    var innerDic = await getApplicationDocumentsDirectory();
    bool c = await File("${innerDic.path}/MyFood.txt").exists();
    if(c == false) {
      var readList = await rootBundle.loadString("assets/txt/MyFood.txt");
      File("${innerDic.path}/MyFood.txt").create();
      File("${innerDic.path}/MyFood.txt").writeAsStringSync(readList);
    }

    var readlist = await File("${innerDic.path}/MyFood.txt").readAsLines();
    for(String l in readlist) {
      bool isExist = await File("${innerDic.path}/$l").exists();
      debugPrint(isExist.toString());
      if(isExist == false) {
        var c = await rootBundle.loadString("assets/txt/$l");
        debugPrint(c);
        File("${innerDic.path}/$l").create();
        File("${innerDic.path}/$l").writeAsStringSync(c);
      }

      var r = await File("${innerDic.path}/$l").readAsLines();
      debugPrint(r.toString());
      Myfood.add(FoodList(label : l,name: r[0], imgPath: r[3], FPath: "${innerDic.path}/$l",ExMin: r[2],ExTem: r[1]));
    }
    return 123;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 배경 색상 변경
      body: Column(
        children: [
          // 메뉴 버튼
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.dehaze,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          // 검색창
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        suffixIcon:
                        IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 0, 0, 0),
                              size: 25,
                            ),
                            onPressed: null //나중에 추가 바람
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 50),
              ],
            ),
          ),
          // 버튼들
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF8BC59), // All 버튼 색상
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('전체', style: TextStyle(fontSize: 20, color: Colors.white)), // 흰색 텍스트
                ),
                ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD9D9D9), // 연한 회색
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('추천 요리', style: TextStyle(fontSize: 20, color: Colors.black)), // 흰색 텍스트
                ), //이거 위에 탭 recommand 임
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD9D9D9), // 연한 회색
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('조리 도구', style: TextStyle(fontSize: 20, color: Colors.black)), // 흰색 텍스트
                ),
              ],
            ),
          ),
          // My Food 제목
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '내 요리',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ),
          // 음식 버튼들 (가로 스크롤 가능)
          SizedBox(
            height: 200, // 높이 조정
            child: FutureBuilder(future: checkExists(), builder: (context, snapshot) {
              return MyFoodWidget(snapshot: snapshot);
            }),
          ),
          // Recommand 제목
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '추천 요리',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext cxt, int idx) {
                return Container(
                  width: double.infinity,
                  height: 120,
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9), // 연한 회색
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Recommand ${idx + 1}', style: const TextStyle(color: Colors.white))),
                );
              },
            )
          ),
        ],
      ),
    );
  }
}
class MyFoodWidget extends StatefulWidget {
  var snapshot;
  MyFoodWidget({required this.snapshot});

  @override
  State<MyFoodWidget> createState() => _MyFoodWidgetState();
}

class _MyFoodWidgetState extends State<MyFoodWidget> {
  @override
  Widget build(BuildContext context) => Padding(padding: const EdgeInsets.only(left: 40),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: Myfood.length, // 음식 요소 개수 증가
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if(widget.snapshot.hasData) {
              setState(() {
                Myfood.insert(0, Myfood[index]);
                Myfood.removeAt(index+1);
                debugPrint(Myfood.length.toString());
              });
              reSaveList();
              Navigator.push(context, MaterialPageRoute(builder: (context) => Info()));
            }},
          child: Container(
            width: 180,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFF8BC59),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  Myfood[index].imgPath,
                  fit: BoxFit.cover,
                  width: 180, // Container 너비에 맞추어 이미지 크기를 조정
                ),
                Center(child: Text(
                  widget.snapshot.hasData ? '${Myfood[index].name}' : 'food',
                  style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
                ),
              ],
            ),
          ),
        );},
    ),
  );
}


void reSaveList() async{ //이것도 저장기능이니 건들지마셈

  var innerDic = await getApplicationDocumentsDirectory();
  File("${innerDic.path}/MyFood.txt").delete();
  File("${innerDic.path}/MyFood.txt").create();

  String saveT = "";
  for(var str in Myfood) {
    saveT += "${str.label}\n";
  }
  File("${innerDic.path}/MyFood.txt").writeAsString(saveT);
}