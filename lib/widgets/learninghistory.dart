import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharmproject/controller/buttonController.dart';
import 'package:tharmproject/controller/checkboxcheckboxController.dart';

class Learninghistory extends StatelessWidget {

  const Learninghistory({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonController buttoncontroller = Get.put(ButtonController());
    final CheckboxController checkcontroller = Get.put(CheckboxController());

    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
              Obx((){
                return Visibility(
                  visible: buttoncontroller.isButtonVisible.value,
                  child: SizedBox(
                    width: 15,
                    height: 15,
                    child: Obx(() => Checkbox(
                        value: checkcontroller.isChecked.value,
                        onChanged: checkcontroller.toggleCheckbox,
                        activeColor: const Color(0xffFF0000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        side: const BorderSide(
                          color: Color(0xffCACACA),
                          width: 1,
                        ),
                      )),
                  )
                );
              })
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
          const Padding(padding: EdgeInsets.only(top: 3)),
          const SizedBox(
            child: Image(image: AssetImage('assets/images/graph.png')),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 17, 0, 15),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color.fromARGB(255, 237, 237, 237)))),
            // bottom: BorderSide(color: Color(0xfff2f2f2)))), // 원래
          ),
        ],
      ),
    );
  }
}
