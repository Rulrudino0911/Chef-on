import 'package:flutter/material.dart';
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
                    onPressed: () {
                      Navigator.pop(context); //임시로 달아 둠 나중에 모션 수정 바람
                    },
                  ),
                ),
              ],
            ),
          ),
          // 검색창
          Padding(
            padding: const EdgeInsets.only(left: 30),
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
                const SizedBox(width: 10),
              ],
            ),
          ),
          // 버튼들
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF5656), // All 버튼 색상
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('All', style: TextStyle(color: Colors.white)), // 흰색 텍스트
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD9D9D9), // 연한 회색
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Recommand', style: TextStyle(color: Colors.white)), // 흰색 텍스트
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD9D9D9), // 연한 회색
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('', style: TextStyle(color: Colors.white)), // 흰색 텍스트
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
                'My Food',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ),
          // 음식 버튼들 (가로 스크롤 가능)
          SizedBox(
            height: 200, // 높이 조정
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // 음식 요소 개수 증가
              itemBuilder: (context, index) {
                return Container(
                  width: 200,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('Food ${index + 1}', style: const TextStyle(color: Colors.white))),
                );
              },
            ),
          ),
          // Recommand 제목
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recommand',
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
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9), // 연한 회색
                    borderRadius: BorderRadius.circular(10),
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
