import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// https://medium.com/@thecodingpapa/json-flutter-61815c214eb8
// https://devocean.sk.com/blog/techBoardDetail.do?ID=163532

class TestTestController extends GetxController {
  void main() {
    var List_data = [
      {
        "id": "uuid와랄라",
        "name": "김뫄뫄",
        "email": "eraser@asdf.com",
        "password": "qwer12", //6자리 설정이랬죠? (추후 조합 추가?영문+숫자+특수문자??)
        "phone": "010-1234-4312",
        "create_at": "2024-08-11",
      },
      {
        "id": "uuid와랄라라",
        "name": "이지지",
        "email": "qwer@asdf.com",
        "password": "qw1qr2", //6자리 설정이랬죠? (추후 조합 추가?영문+숫자+특수문자??)
        "phone": "010-2222-3333",
        "create_at": "2024-08-12",
      },
    ];
    var jsonData = jsonEncode(List_data);
    var dev_o = jsonDecode(jsonData);
    var first = dev_o[0];
    var second = dev_o[1];

  }
}

class TestTest extends StatelessWidget {
  final TestTestController controller = Get.put(TestTestController());
  TestTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column();
  }
}
