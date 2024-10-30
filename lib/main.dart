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

// Home 페이지
class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            height: 100, // 높이 조정
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // 음식 요소 개수 증가
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
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
          // Recommand 버튼들 (세로 정렬)
          Column(
            children: List.generate(3, (index) {
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9), // 연한 회색
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Recommand ${index + 1}', style: const TextStyle(color: Colors.white))),
              );
            }),
          ),
        ],
      ),
    );
  }
}
