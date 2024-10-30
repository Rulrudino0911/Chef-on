import 'package:chef_on/userpage/signin.dart';
import 'package:flutter/material.dart';

import 'mainpage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                'Hello!',
                style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Create account and sign in',
                style: TextStyle(fontSize: 10, color: Color.fromARGB(160, 255, 255, 255)),
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: const TextStyle(fontSize: 11, color: Color.fromARGB(160, 255, 255, 255)),
                  filled: true,
                  fillColor: const Color(0xFF3F3F3F),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  contentPadding: const EdgeInsets.all(15)
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(fontSize: 11, color: Color.fromARGB(160, 255, 255, 255)),
                  filled: true,
                  fillColor: const Color(0xFF3F3F3F),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  contentPadding: const EdgeInsets.all(15)
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(fontSize: 11, color: Color.fromARGB(160, 255, 255, 255)),
                  filled: true,
                  fillColor: const Color(0xFF3F3F3F),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  contentPadding: const EdgeInsets.all(15)
              ),
            ),
            const SizedBox(height: 50),

            //Register Botton
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(500, 47),
                  backgroundColor: const Color(0xFFFF5656),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
                onPressed: () {
                  // Register action here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text('Register',
                    style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 255, 255, 255),))
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Have an account? ',
                  style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 255, 255, 255)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 12, color: Color(0xFFFF5656)),
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
