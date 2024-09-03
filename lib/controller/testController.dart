import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TestController extends GetxController {
  // String text1245 = '대충 요로코롬~';
  static TestController get to => Get.find();
  var list = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  // BuildContext를 매개변수로 받도록 수정
  void loadJsonFile(BuildContext context) async {
    try {
      String data = await DefaultAssetBundle.of(context)
          .loadString("assets/json/test.json");
      list(json.decode(data).cast<Map<String, dynamic>>().toList());
    } catch (e) {
      print("Error loading JSON file: $e");
    }
  }
}
