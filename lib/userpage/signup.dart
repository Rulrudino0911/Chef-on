import 'package:chef_on/userpage/signin.dart';
import 'package:flutter/material.dart';

import 'mainpage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft, // 왼쪽 정렬
              child: IconButton(
                icon: const Icon(
                  Icons.chevron_left,
                  color: Color.fromARGB(100, 255, 255, 255),
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context); // 이전 페이지로 이동
                },
              ),
            ),
            const SizedBox(height: 60),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '반가워요!',
                style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            const SizedBox(height: 7),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '회원가입과 로그인을 해주세요',
                style: TextStyle(fontSize: 15, color: Color.fromARGB(160, 255, 255, 255)),
              ),
            ),
            const SizedBox(height: 60),
            Container(
              child: Flexible(
                child: TextField(
              decoration: InputDecoration(
                  labelText: '이름',
                  labelStyle: const TextStyle(fontSize: 18, color: Color.fromARGB(160, 255, 255, 255)),
                  filled: true,
                  fillColor: const Color(0xFF3F3F3F),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  contentPadding: const EdgeInsets.all(23)
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            TextField(
              decoration: InputDecoration(
                  labelText: '이메일',
                  labelStyle: const TextStyle(fontSize: 18, color: Color.fromARGB(160, 255, 255, 255)),
                  filled: true,
                  fillColor: const Color(0xFF3F3F3F),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  contentPadding: const EdgeInsets.all(23)
              ),
            ),
            const SizedBox(height: 18),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: '비밀번호',
                  labelStyle: const TextStyle(fontSize: 18, color: Color.fromARGB(160, 255, 255, 255)),
                  filled: true,
                  fillColor: const Color(0xFF3F3F3F),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  contentPadding: const EdgeInsets.all(23)
              ),
            ),
            const SizedBox(height: 70),

            //Register Botton
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(400, 70),
                  backgroundColor: const Color(0xffff8bc59),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
                onPressed: () {
                  // Register action here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text('등록하기',
                    style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0),))
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '이미 계정이 있나요? ',
                  style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 255, 255, 255)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  child: const Text(
                    '로그인하기',
                    style: TextStyle(fontSize: 18, color: Color(0xFFF8BC59)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
