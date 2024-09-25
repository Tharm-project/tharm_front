import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharmproject/screens/home_screen.dart';
import 'package:tharmproject/screens/learning_screen.dart';
// import 'package:tharmproject/screens/learning_screen.dart';

// 로그인 페이지
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tharm',
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.only(top: 52)),
            const SizedBox(
              width: 290,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: '아이디',
                  labelStyle: TextStyle(
                    color: Color(0xffAEAEAE),
                    // color: Color(0xffAEAEAE),
                    fontSize: 14,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 1.5
                    )
                  )
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 8)),
            const SizedBox(
              width: 290,
              height: 50,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: '비밀번호',
                  labelStyle: TextStyle(
                    color: Color(0xffAEAEAE),
                    fontSize: 14,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0), width: 1.5)
                  )
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 15)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(290, 50),
                backgroundColor: const Color(0xff85B3F8),
                // backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => Get.toNamed('/home'),
              // onPressed: () {
              //   Get.off(
              //     // const HomeScreen(),
              //     const LearningScreen(),
              //   );
              // },
              child: const Text(
                '로그인',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )),
            const Padding(padding: EdgeInsets.only(top: 30)),
            ],
          ),
        ),
      )
    );
  }
}
