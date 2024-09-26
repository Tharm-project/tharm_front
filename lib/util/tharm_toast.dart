import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP, // 위치 설정 (BOTTOM, CENTER, TOP 등)
    backgroundColor: Colors.black,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
