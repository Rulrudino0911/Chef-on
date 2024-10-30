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
        body: ListView(
          children: const [
            Cooking(),
          ],
        ),
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
        Container(
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
              ),
            ],
          ),
          child: Stack(
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
              Positioned(
                left: 170,
                top: 1050,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(),
                  ),
                ),
              ),
              const Positioned(
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
              Positioned(
                left: 180,
                top: 1060,
                child: Row(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: const FlutterLogo(),
                    ),
                    const SizedBox(width: 100), // 버튼과 로고 사이의 간격
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // 버튼 클릭 시 동작
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF5656), // 버튼 색상
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Next >>',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Jalnan OTF',
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
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
              const Positioned(
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
              Positioned(
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
              const Positioned(
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
              Positioned(
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
              Positioned(
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
                      const Positioned(
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
                      const Positioned(
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
              Positioned(
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
                      const Positioned(
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
                      const Positioned(
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
              Positioned(
                left: 18,
                top: 600,
                child: SizedBox(
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
                      const Positioned(
                        left: 60,
                        top: 90,
                        child: Text(
                          '★ 요리 완료!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 45,
                            fontFamily: 'Jalnan OTF',
                            fontWeight: FontWeight.w700,
                            height: 0.02,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 45,
                        top: 150,
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
            ],
          ),
        ),
      ],
    );
  }
}
