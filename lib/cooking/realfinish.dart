import 'package:flutter/material.dart';

void main() {
  runApp(const ChefOnApp());
}

class ChefOnApp extends StatelessWidget {
  const ChefOnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          realFinish(),
        ]),
      ),
    );
  }
}

class realFinish extends StatelessWidget {
  const realFinish({super.key});

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
              )
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 183,
                child: Container(
                  width: 600,
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
                left: 100,
                top: 1050,
                child: SizedBox(
                  width: 1920,
                  height: 60,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 400,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFFBB56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 170,
                        top: 20,
                        child: SizedBox(
                          width: 108.50,
                          child: Text(
                            'Next   >',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Jalnan OTF',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 220,
                top: 78,
                child: Text(
                  '요리 완성!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 38,
                    fontFamily: 'Jalnan OTF',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const Positioned(
                left: 153,
                top: 285,
                child: SizedBox(
                  width: 600,
                  height: 300,
                  child: Text(
                    '요리가 완성되었습니다!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Jalnan OTF',
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 200,
                top: 350,
                child: SizedBox(
                  width: 600,
                  height: 300,
                  child: Text(
                    '맛있게 드세요!!',
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
              const Positioned(
                left: 110,
                top: 990,
                child: SizedBox(
                  width: 600,
                  height: 300,
                  child: Text(
                    '언제나 따뜻한 마음으로 요리해드리겠습니다',
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
              Positioned(
                left: 120,
                top: 500,
                child: Container(
                  width: 370,
                  height: 360,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFBB56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(175),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 180,
                top: 570,
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFF9EA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(175),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 250,
                top: 555,
                child: Container(
                  width: 115,
                  height: 115,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFF9EA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(175),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 320,
                top: 570,
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFF9EA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(175),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 205,
                top: 640,
                child: Container(
                  width: 200,
                  height: 150,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFF9EA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 205,
                top: 760,
                child: Container(
                  width: 200,
                  height: 30,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF69508),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
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
