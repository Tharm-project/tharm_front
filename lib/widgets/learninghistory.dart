import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharmproject/controller/checkboxController.dart';

class Learninghistory extends StatelessWidget {
  final int index; // index 값을 추가

  const Learninghistory({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final CheckboxController controller = Get.put(CheckboxController());

// return Container(
//   child: Column(children: [

//      Obx(() {
//                 return Visibility(
//                   visible: controller.isButtonVisible.value,
//                   child: SizedBox(
//                     width: 15,
//                     height: 15,
//                     child: Obx(() => Checkbox(
//                         value: controller.selectIndexList.contains(index) ? true : false ,
//                         onChanged: (value) {
//                           controller.toggleCheckbox(index); // index에 따라 선택
//                         },
//                         activeColor: const Color(0xffFF0000),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                         side: const BorderSide(
//                           color: Color(0xffCACACA),
//                           width: 1,
//                         ),
//                       )),
//                   )
//                 );
//               })
//             ],
//           ),
// );
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() {
                return Text(
                  controller.itemList[index]['name'].toString(),
                  style: const TextStyle(
                    fontSize: 18
                  ),
                );
              }),
              Obx(() {
                return Visibility(
                  visible: controller.isButtonVisible.value,
                  child: SizedBox(
                    width: 15,
                    height: 15,
                    child: Obx(() => Checkbox(
                        value: controller.selectIndexList.contains(index) ? true : false ,
                        onChanged: (value) {
                          controller.toggleCheckbox(index); // index에 따라 선택
                        },
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
          Obx(() {
            return Align(
              alignment: Alignment.centerLeft,
              child: Text(controller.itemList[index]['summery'].toString(),
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            );
          }),
          Obx(() {
            return Align(
              alignment: Alignment.centerRight,
              child: Text(controller.itemList[index]['progress'].toString(),
                style: const TextStyle(
                  fontSize: 10,
                ),
              ),
            );
          }),
          const Padding(padding: EdgeInsets.only(top: 3)),
          const SizedBox(
            child: Image(image: AssetImage('assets/images/graph.png')),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 17, 0, 15),
            decoration: const BoxDecoration(
                border: Border(
                    bottom:BorderSide(color: Color.fromARGB(255, 237, 237, 237)))),
            // bottom: BorderSide(color: Color(0xfff2f2f2)))), // 원래
          ),
        ],
      ),
    );
  }
}
