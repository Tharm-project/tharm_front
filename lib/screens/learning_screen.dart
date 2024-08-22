import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tharmproject/widgets/home-menu.dart';

class LearningController extends GetxController {
  var isChecked = false.obs;

  void toggleCheckbox(bool? value) {
    isChecked.value = value ?? false;
  }
}

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LearningController controller = Get.put(LearningController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.fromLTRB(12, 9, 0, 21),
            child: const Text(
              'Tharm',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              // 첫번째 박스
              SizedBox(
                height: 169,
                child: Stack(
                  children: [
                    Container(
                      width: 290,
                      height: 155,
                      padding: const EdgeInsets.fromLTRB(7, 15, 13, 0),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xff73D4F9), Color(0xffD1ECFB)],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        shape: BoxShape.rectangle,
                      ),
                      child: const Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '최근학습내역',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                            // height: 20,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '학습명',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '머시기머시기',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '45% 진행완료!',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff4B4B4B)
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          SizedBox(
                            // height: 15,
                            child: Image(
                              image:AssetImage('assets/images/graph.png')
                            ),
                          )
                        ],
                      )),
                      Positioned(
                        width: 70,
                        height: 30,
                        bottom: 0,
                        left: 105,
                        child: SizedBox(
                          height: 30,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              backgroundColor: const Color(0xff85B3F8)),
                          onPressed: () {},
                          child: const Text(
                            '학습 하기',
                            style: TextStyle(
                              fontSize: 12, color: Colors.white),
                          ),
                        ),
                      )
                    ),
                  ],
                ),
              ),

              // border
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 14),
                width: 283,
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Color(0xffD9D9D9)))
                ),
              ),

              // 두번째 박스
              SizedBox(
                width: 290,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '전체 학습 내역',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.close_outlined)),
                        ],
                      ),
                      SizedBox(
                        // 대략
                        width: 284,
                        // 원래
                        // width: 275,
                        child: Column(
                            children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '학습명',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Obx(() => Checkbox(
                                  value: controller.isChecked.value,
                                  onChanged: controller.toggleCheckbox,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                      BorderRadius.circular(6),
                                  ),
                                  side: const BorderSide(
                                    color: Color(0xffCACACA),
                                    width: 1,
                                  ),
                                )),
                              ],
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '머시기 머시기',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '45% 진행완료!',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff4B4B4B),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const SizedBox(
                              child: Image(
                                image:
                                  AssetImage('assets/images/graph.png')),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}
