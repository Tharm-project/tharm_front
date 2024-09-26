import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharmproject/util/tharm_toast.dart';

class LoaginController extends GetxController {
  late TextEditingController emailTextController;
  late TextEditingController passwordTextController;

  @override
  void onInit() {
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();

    super.onInit();
  }

  Future<void> login() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: emailTextController.text.trim(),
            password: passwordTextController.text.trim(),
          )
          .then((value) => {});
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'invalid-email') {
        // print('이메일 형식이 잘못되었습니다.');
        showToast('이메일 형식이 잘못되었습니다.');
      }
    }
  }

  void signUp() {}

  void signOut() {
    FirebaseAuth.instance.signOut(); //로그아웃
  }
}
