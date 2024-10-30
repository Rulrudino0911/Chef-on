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
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome\nBack!',
                style: TextStyle(fontSize: 30, color: Colors.white, height: 1),
              ),
            ),

            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sign in to your account',
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(fontSize: 11, color: Color.fromARGB(255, 255, 255, 255)),
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
                  labelStyle: const TextStyle(fontSize: 11, color: Color.fromARGB(255, 255, 255, 255)),
                  filled: true,
                  fillColor: const Color(0xFF3F3F3F),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  contentPadding: const EdgeInsets.all(15)
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Forget Password?',
                style: TextStyle(fontSize: 10, color: Color(0xFFFF5656)),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(500, 47),
                backgroundColor: const Color(0xFFFF5656),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
              onPressed: () {
                // Sign in action here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text('Sign In', style: TextStyle(fontSize: 12, color: Color.fromRGBO(255, 255, 255, 1),)),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't Have an account? ",
                  style: TextStyle(fontSize: 10, color: Colors.white),
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
                    'Sign Up',
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
