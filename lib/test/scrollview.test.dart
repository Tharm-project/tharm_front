// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tharmproject/controller/checkboxController.dart';
// import 'package:tharmproject/screens/detailed_screen.dart';
// import 'package:tharmproject/widgets/learninghistory.dart';

// class LearningScreen extends StatelessWidget {
//   const LearningScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final CheckboxController controller = Get.put(CheckboxController());

    
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.lightBlue,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             alignment: Alignment.centerLeft,
//             margin: const EdgeInsets.fromLTRB(12, 10, 0, 20),
//             child: const Text(
//               'Tharm',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
//             child: Column(
//               children: [
//                 // 첫 번째 박스
//                 SizedBox(
//                   height: 169,
//                   child: Stack(
//                     children: [
//                       Container(
//                         height: 155,
//                         padding: const EdgeInsets.fromLTRB(7, 15, 13, 0),
//                         decoration: const BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                             colors: [Color(0xff73D4F9), Color(0xffD1ECFB)],
//                           ),
//                           borderRadius: BorderRadius.all(Radius.circular(10)),
//                           shape: BoxShape.rectangle,
//                         ),
//                         child: const Column(
//                           children: [
//                             Align(
//                               alignment: Alignment.centerLeft,
//                               child: Text(
//                                 '최근학습내역',
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                             Padding(padding: EdgeInsets.only(top: 13)),
//                             Align(
//                               alignment: Alignment.centerLeft,
//                               child: Text(
//                                 '학습명',
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                             Align(
//                               alignment: Alignment.centerLeft,
//                               child: Text(
//                                 '머시기머시기',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                 ),
//                               ),
//                             ),
//                             Align(
//                               alignment: Alignment.centerRight,
//                               child: Text(
//                                 '45% 진행완료!',
//                                 style: TextStyle(
//                                     fontSize: 10, color: Color(0xff4B4B4B)),
//                               ),
//                             ),
//                             Padding(padding: EdgeInsets.only(top: 3)),
//                             SizedBox(
//                               height: 15,
//                               child: Image(
//                                   image: AssetImage('assets/images/graph.png')),
//                             )
//                           ],
//                         )),
//                         Positioned(
//                             width: 70,
//                             height: 30,
//                             bottom: 0,
//                             left: 150,
//                             child: SizedBox(
//                               height: 30,
//                               child: TextButton(
//                                 style: TextButton.styleFrom(
//                                     minimumSize: Size.zero,
//                                     padding: EdgeInsets.zero,
//                                     backgroundColor: const Color(0xff85B3F8)),
//                                 onPressed: () {
//                                   Get.to(() => const DetailedScreen());
//                                 },
//                                 child: const Text(
//                                   '학습 하기',
//                                   style: TextStyle(fontSize: 12, color: Colors.white),
//                                 ),
//                               ),
//                             )),
//                       ],
//                     ),
//                   ),
//               ],
//             ),
//           ),

//           // border
//           Container(
//             margin: const EdgeInsets.fromLTRB(0, 9, 0, 0),
//             decoration: const BoxDecoration(
//                 border: Border(bottom: BorderSide(color: Color(0xffD9D9D9)))),
//           ),
          
//           // 전체 학습 내역을 스크롤 가능하도록 `Expanded`로 감싸기
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Container(
//                     // width: 250,
//                     padding: const EdgeInsets.fromLTRB(20, 5, 20, 15),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text(
//                           '전체 학습 내역',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           width: 30, // 야매로 위치 조정 //원래 이거 아님
//                           child: IconButton(
//                               color: Colors.black,
//                               onPressed: () {
//                                 controller.toggleButtonVisibility();
//                               },
//                               icon: const Icon(Icons.settings)),
//                         )
//                       ],
//                     ),
//                   ),

//                   GetBuilder<CheckboxController>(builder: (c) {
//                     return ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: c.itemList.length,
//                       itemBuilder: (context, index) {
//                         return Learninghistory(index: index);
//                       },
//                     );
//                   }),

//                   Obx(() {
//                     return Visibility(
//                         visible: controller.isButtonVisible.value,
//                         child: SizedBox(
//                           width: 170,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Column(
//                                 children: [
//                                   IconButton(
//                                     icon: SizedBox(
//                                       width: 15,
//                                       child: Image.asset('assets/images/x.png'),
//                                     ),
//                                     onPressed: () {
//                                       controller.toggleButtonVisibility();
//                                     },
//                                   ),
//                                   const Text(
//                                     '취소',
//                                     style: TextStyle(
//                                       fontSize: 10,
//                                       color: Color(0xff7F7F7F),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 children: [
//                                   IconButton(
//                                     icon: SizedBox(
//                                       width: 15,
//                                       child:
//                                           Image.asset('assets/images/del.png'),
//                                     ),
//                                     onPressed: controller.del,
//                                   ),
//                                   const Text(
//                                     '삭제',
//                                     style: TextStyle(
//                                         fontSize: 10, color: Color(0xffFC0005)),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ));
//                   })
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
