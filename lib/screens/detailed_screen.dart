import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharmproject/controller/detailedController.dart';
import 'package:tharmproject/controller/detailed_screen_controller.dart';
import 'package:tharmproject/screens/pdf_screen.dart';
import 'package:tharmproject/screens/translation_screen.dart';

class DetailedScreen extends StatelessWidget {
  DetailedScreen({super.key});

  final DetailedScreenController controller =
      Get.put(DetailedScreenController());

  @override
  Widget build(BuildContext context) {
    Get.put(DetailedController(text: controller.context.value));
    return Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          backgroundColor: Colors.lightBlue,
        ),
        body: GetX<DetailedController>(
          builder: (controller) {
            return ListView(
              padding: const EdgeInsets.fromLTRB(12, 20, 12, 17),
              // padding: const EdgeInsets.all(5),
              children: controller.buttonSegments.map((segment) {
                return Container(
                  alignment: Alignment.centerLeft,
                  // height: 40,
                  child: TextButton(
                    onPressed: () {
                      _showBottomSheet(context, segment);
                    },
                    child: Text(
                      segment,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
              }).toList(),
            );
          },
        ));
  }

  Future<dynamic> _showBottomSheet(BuildContext context, String segment) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(30),
          ),
          child: Container(
            padding: const EdgeInsets.fromLTRB(22, 38, 22, 0),
            height: 222,
            color: Colors.white,
            width: double.infinity,
            child: SizedBox(
              width: 269,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      segment,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 37, 0, 13),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '문장에 대해 수어로 번역할까요?',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    // mainAxisAlignment:MainAxisAlignment.spaceAround,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 45,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xffd9d9d9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          onPressed: () async {
                            await controller.postVideo(segment);
                          },
                          child: const Text(
                            '번역하기',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        height: 45,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xffd9d9d9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text(
                            '취소하기',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
