import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharmproject/main.dart';

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

class Test1234 extends StatefulWidget {
  const Test1234({super.key});

  @override
  _Test1234State createState() => _Test1234State();
}

class _Test1234State extends State<Test1234> {
  final TestController controller = Get.put(TestController());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Context를 사용하여 JSON 파일을 로드
      controller.loadJsonFile(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test1234 Screen 123'),
      ),
      body: Obx(
        () {
          if (controller.list.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: List.generate(controller.list.length, (index) {
                  var post =
                      controller.list[index].map<String, String>((key, value) {
                    return MapEntry(key.toString(), value.toString());
                  });
                  return PoWidget(
                    uid: post['uid'] ?? 'No UID',
                    title: post['title'] ?? 'No Title',
                    description: post['description'] ?? 'No Description',
                    id: post['id'] ?? 'id',
                    name: post['name'] ?? 'name',
                    email: post['email'] ?? 'email',
                    password: post['password'] ?? 'password',
                    phone: post['phone'] ?? 'phone',
                    create_at: post['create_at'] ?? 'create_at',
                  );
                }),
              ),
            );
          }
        },
      ),
    );
  }
}

class PoWidget extends StatelessWidget {
  final String uid;
  final String title;
  final String description;
  final String id;
  final String name;
  final String email;
  final String password;
  final String phone;
  final String create_at;

  const PoWidget({
    required this.uid,
    required this.title,
    required this.description,
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.create_at,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextAnimation extends GetxController {
  Map<String, String?>? post;

  @override
  void onInit() {
    super.onInit();
    _loadData();
  }

  void _loadData() {
    post = Get.parameters;
  }
}

class PostDetailView extends GetView<TextAnimation> {
  const PostDetailView();

  @override
  Widget build(BuildContext context) {
    final post = controller.post;
    if (post == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Post Detail'),
        ),
        body: const Center(
          child: Text('No post data available'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(post['title'] ?? 'No Title'),
      ),
      body: Column(
        children: [
          if (post['thumbnail'] != null) Image.asset(post['thumbnail']!),
          Column(
            children: [
              Text(post['title'] ?? 'No Title'),
              Text(post['description'] ?? 'No Description'),
            ],
          ),
        ],
      ),
    );
  }
}
