import 'package:flutter/material.dart';

void main() {
  runApp(const ChefONApp());
}

class ChefONApp extends StatelessWidget {
  const ChefONApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          Cooking(),
        ]),
      ),
    );
  }
}

class Cooking extends StatelessWidget {
  const Cooking({super.key});

  @override
  Widget build(BuildContext context) {
    // 화면의 크기 정보를 가져옵니다.
    final Size screenSize = MediaQuery.of(context).size;
    final double width = screenSize.width;
    final double height = screenSize.height;

    return Column(
      children: [
        Container(
          width: width * 0.95, // 화면 너비의 95%
          height: height * 0.85, // 화면 높이의 85%
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 40,
                offset: Offset(0, 20),
                spreadRadius: 0,
              )
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: width * 0.02,
                top: height * 0.25, // 비율에 따라 위치 조정
                child: Container(
                  width: width * 0.95,
                  height: height * 0.65,
                  decoration: const ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(     // 1번 회색 동그라미
                left: width * 0.05,
                top: height * 0.29,
                child: Opacity(
                  opacity: 0.50,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(   // 빨간 둥근모서리네모
                left: width * 0.02,
                top: height * 0.37,
                child: Container(
                  width: width * 0.95,
                  height: height * 0.25,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFFF5656),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(   // 3번 빨간 동그라미
                left: width * 0.05,
                top: height * 0.67,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFFF5656),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(    // 4번 흰색 동그라미
                left: width * 0.05,
                top: height * 0.765,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(   // 상단 쿠킹 텍스트
                left: width * 0.06,
                top: height * 0.05,
                child: const Text(
                  'cooking',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontFamily: 'Jalnan OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(   // 2번 큰 네모 샘플 텍스트
                left: width * 0.06,
                top: height * 0.40,
                child: const Text(
                  '2. Sample',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontFamily: 'Jalnan OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(  // 빨간 네모 샘플 텍스트
                left: width * 0.07,
                top: height * 0.5,
                child: const Text(
                  'This is a sample text This is a sample text\nThis is a sample text This is a sample textThis is a sample text This is a sample text ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Jalnan OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(  //빨간 동그라미 3번 텍스트
                left: width * 0.063,
                top: height * 0.675,
                child: const Text(
                  '3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Jalnan OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(  //회색 동그라미 1번 샘플 텍스트
                left: width * 0.11,
                top: height * 0.290,
                child: const Text(
                  'This is sample text',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Jalnan OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(  //빨간 동그라미 3번 샘플 텍스트
                left: width * 0.11,
                top: height * 0.675,
                child: const Text(
                  'This is sample text',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Jalnan OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(  //흰 동그라미 샘플 텍스트
                left: width * 0.11,
                top: height * 0.770,
                child: const Text(
                  'This is sample text',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Jalnan OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(  // 1번 동그라미 1 검은색 텍스트
                left: width * 0.063,
                top: height * 0.295,
                child: const Text(
                  '1',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Janan OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(  // 4번 흰 동그라미 4 텍스트
                left: width * 0.062,
                top: height * 0.770,
                child: const Text(
                  '4\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Janan OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(  // 상단 쿡 1 텍스트
                left: width * 0.1,
                top: height * 0.20,
                child: const Text(
                  'cook 1',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Janan OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(  // 상단 쿡 1 빨간 동그라미
                left: width * 0.05,
                top: height * 0.207,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFFF5656),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(  // 상단 쿡 2 텍스트
                left: width * 0.3,
                top: height * 0.20,
                child: const Text(
                  'cook 2',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Janan OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(  // 상단 쿡 2 동그라미
                left: width * 0.25,
                top: height * 0.207,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF939393),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(  // 상단 쿡 3 텍스트
                left: width * 0.5,
                top: height * 0.20,
                child: const Text(
                  'cook 3',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Janan OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(  // 상단 쿡 3 동그라미
                left: width * 0.45,
                top: height * 0.207,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF939393),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(  // 상단 쿡 4 텍스트
                left: width * 0.7,
                top: height * 0.20,
                child: const Text(
                  'cook 4',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Janan OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(  // 상단 쿡 4 동그라미
                left: width * 0.65,
                top: height * 0.207,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF939393),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
