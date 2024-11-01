import 'package:chef_on/userpage/signup.dart';
import 'package:flutter/material.dart';

import 'mainpage.dart';


class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
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
                '다시 만나서\n반가워요:)',
                style: TextStyle(fontSize: 40, color: Colors.white, height: 1.2),
              ),
            ),

            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '계정을 로그인 해주세요',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                  labelText: '이메일',
                  labelStyle: const TextStyle(fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
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
                  labelStyle: const TextStyle(fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
                  filled: true,
                  fillColor: const Color(0xFF3F3F3F),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  contentPadding: const EdgeInsets.all(23)
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child :Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  '비밀번호를 잊으셨나요?',
                  style: TextStyle(fontSize: 15, color: Color(0xffff8bc59)),
                ),
              ),
            ),
            const SizedBox(height: 70),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(400, 70),
                backgroundColor: const Color(0xffff8bc59),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
              ),
              onPressed: () {
                // Sign in action here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text('로그인하기', style: TextStyle(fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1),)),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "계정을 가지고 있지 않나요? ",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpPage()),
                    );
                  },
                  child: const Text(
                    '회원가입하기',
                    style: TextStyle(fontSize: 18, color: Color(0xffff8bc59)),
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
