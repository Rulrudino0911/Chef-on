import 'package:chef_on/userpage/signin.dart';
import 'package:chef_on/userpage/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChefOnApp());
}

class ChefOnApp extends StatelessWidget {
  const ChefOnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Jalnan",
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // 상단 이미지 요소
          Container(
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcom_page_graphic.png'), // 이미지 경로 설정 
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left:40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
              'Chef ON!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "수수수 수퍼노바 사건은 다가와 ㅇ어ㅗ어어에 \n거세가 커져가 어어어에\n질문은 계속데 어어어에 수수수부퍼노바",
              style: TextStyle(
                color: Color.fromARGB(140, 255, 255, 255),
                fontSize: 9,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                ElevatedButton( //sign up button
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF5656),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                OutlinedButton( //sign in button
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignInPage()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white), // 테두리 색
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


