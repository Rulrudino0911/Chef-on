import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

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
    return Column(
      children: [
        Container(  // 전체 화면
          width: 1920,
          height: 1200,
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
          child: Stack(  // 검은 화면
            children: [
              Positioned(
                left: 0,
                top: 222,
                child: Container(
                  width: 1920,
                  height: 1200,
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
              const Positioned(  // 하단 피니시 쿠킹
                left: 100,
                top: 1025,
                child: SizedBox(
                  width: 300,
                  height: 30,
                  child: Text(
                    'Finish Fooking!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Jalnan OTF',
                      fontWeight: FontWeight.w700,
                      height: 0.04,
                    ),
                  ),
                ),
              ),
              Positioned(  // 피니싱쿠킹옆에있는 동그라미
                left: 30,
                top: 1000,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(),
                  ),
                ),
              ),
              const Positioned(  // 상단 쿠킹 1 텍스트
                left: 80,
                top: 165,
                child: Text(
                  'cook 1',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Jalnan OTF',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(  // 피니시 쿠킹 플러터 로고
                left: 35,
                top: 1005,
                child: Container(
                  width: 35,
                  height: 35,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: const FlutterLogo(),
                ),
              ),
              Positioned(  // 상단 빨간 동그라미 쿠킹옆에
                left: 40,
                top: 170,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFFF5656),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              const Positioned(  // 상단 쿠킹 2 텍스트
                left: 250,
                top: 165,
                child: Text(
                  'cook 2',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Jalnan OTF',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(  // 상단 쿠킹2 동그라미
                left: 210,
                top: 170,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF939393),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              const Positioned(   // 상단 쿠킹 3 텍스트
                left: 420,
                top: 165,
                child: Text(
                  'cook 3',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Jalnan OTF',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(  // 상단 쿠킹3 옆에 동그라미
                left: 380,
                top: 170,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF939393),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(  // 검은 화면에 연한 투명? 2번 동그라미
                left: 30,
                top: 300,
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Opacity(
                          opacity: 0.50,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(  // 2번 동그라미 텍스트
                        left: 15,
                        top: 23,
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontFamily: 'Jalnan OTF',
                            fontWeight: FontWeight.w700,
                            height: 0.09,
                          ),
                        ),
                      ),
                      const Positioned(  // 2번 샘플 텍스트
                        left: 60,
                        top: 23,
                        child: SizedBox(
                          width: 1000,
                          height: 5000,
                          child: Opacity(
                            opacity: 0.50,
                            child: Text(
                              'This is a sample text',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Jalnan OTF',
                                fontWeight: FontWeight.w700,
                                height: 0.04,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(  // 숫자3 동그라미
                left: 30,
                top: 440,
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Opacity(
                          opacity: 0.50,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(  // 숫자 3 텍스트
                        left: 13,
                        top: 20,
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 45,
                            fontFamily: 'Jalnan OTF',
                            fontWeight: FontWeight.w700,
                            height: 0.09,
                          ),
                        ),
                      ),
                      const Positioned( // 숫자 3 옆에 샘플 텍스트
                        left: 60,
                        top: 20,
                        child: SizedBox(
                          width: 3000,
                          height: 3000,
                          child: Opacity(
                            opacity: 0.50,
                            child: Text(
                              'This is a sample text',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Jalnan OTF',
                                fontWeight: FontWeight.w700,
                                height: 0.04,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(  // 가운데 흰색 네모
                left: 18,
                top: 600,
                child: SizedBox(  // 플러터 검은색
                  width: 1920,
                  height: 300,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 0,
                        child: Container(
                          width: 1920,
                          height: 300,
                          decoration: const ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(  // 가운데 흰색 네모 안 샘플 텍스트
                        left: 60,
                        top: 49,
                        child: Text(
                          '4. Sample',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 45,
                            fontFamily: 'Jalnan OTF',
                            fontWeight: FontWeight.w700,
                            height: 0.02,
                          ),
                        ),
                      ),
                      const Positioned(  // 가운데 흰색 네모 안 긴 텍스트
                        left: 45,
                        top: 125,
                        child: Opacity(
                          opacity: 0.80,
                          child: Text(
                            'This is a sample text This is a sample text',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: 'Jalnan OTF',
                              fontWeight: FontWeight.w700,
                              height: 0.14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(  // 가운데 흰색 네모 안 플러터 로고 검은색 동그라미
                left: 66,
                top: 800,
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: const ShapeDecoration(
                    color: Colors.black,
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(  // 중간 플러터 로고
                left: 76,
                top: 810,
                child: Container(
                  width: 35,
                  height: 35,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: const FlutterLogo(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
