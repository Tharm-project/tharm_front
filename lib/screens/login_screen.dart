import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharmproject/screens/home_screen.dart';
import 'package:tharmproject/screens/learning_screen.dart';


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
            const SizedBox(height: 60),
            const SizedBox(
              width: 290,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: '아이디',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const SizedBox(
              width: 290,
              height: 50,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: '비밀번호',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(290, 50),
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Get.off(
                  const LearningScreen(),
                  // const HomeScreen(),
                );
              },
              child: const Text(
                '로그인',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )),
          ],
        ),
      ),
    ));
  }
}
