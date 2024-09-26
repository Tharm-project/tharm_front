import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharmproject/controller/login_controller.dart';
import 'package:tharmproject/screens/home_screen.dart';
import 'package:tharmproject/screens/learning_screen.dart';
import 'package:tharmproject/widgets/input_form/default_input_form.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.put(LoaginController());

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
            DefaultInputForm(
              labelText: '아이디',
              controller: controller.emailTextController,
              keyboardType: TextInputType.emailAddress,
            ),
            const Padding(padding: EdgeInsets.only(top: 8)),
            DefaultInputForm(
              labelText: '비밀번호',
              obscureText: true,
              controller: controller.passwordTextController,
            ),
            const Padding(padding: EdgeInsets.only(top: 15)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(290, 50),
                  backgroundColor: const Color(0xff85B3F8),
                  // backgroundColor: Colors.blueGrey,
                ),
                onPressed: controller.login,
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
    ));
  }
}
