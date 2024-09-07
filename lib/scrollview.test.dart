import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharmproject/screens/detailed_screen.dart';
import 'package:tharmproject/widgets/learninghistory.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          // 첫 번째 박스
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
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '최근학습내역',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 13),
                      const Text(
                        '학습명',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const Text(
                        '머시기머시기',
                        style: TextStyle(
                          fontSize: 14,
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
                      const SizedBox(height: 3),
                      SizedBox(
                        child: Image.asset('assets/images/graph.png'),
                      ),
                    ],
                  ),
                ),
                // `Positioned`를 올바르게 배치하여 학습하기 버튼을 화면 하단에 위치시킴
                Positioned(
                  bottom: 0,
                  left: 110,
                  child: SizedBox(
                    height: 30,
                    width: 70,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        backgroundColor: const Color(0xff85B3F8),
                      ),
                      onPressed: () {
                        Get.to(() => const DetailedScreen());
                      },
                      child: const Text(
                        '학습 하기',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // border
          Container(
            margin: const EdgeInsets.fromLTRB(0, 9, 0, 0),
            width: 283,
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Color(0xffD9D9D9))),
            ),
          ),
          // 전체 학습 내역을 스크롤 가능하도록 `Expanded`로 감싸기
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    // width: 250,
                    padding: const EdgeInsets.fromLTRB(0, 3, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '전체 학습 내역',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 30, // 야매로 위치 조정 //원래 이거 아님
                          child: IconButton(
                              color: Colors.black,
                              onPressed: () {},
                              icon: const Icon(Icons.settings)),
                        )
                      ],
                    ),
                  ),
                  const Learninghistory(index: 0),
                  const Learninghistory(index: 1),
                  const Learninghistory(index: 2),
                  // const Learninghistory(),
                  // const Learninghistory(),
                  SizedBox(
                    width: 170,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              icon: SizedBox(
                                width: 15,
                                child: Image.asset('assets/images/x.png'),
                              ),
                              onPressed: () {},
                            ),
                            const Text(
                              '취소',
                              style: TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: SizedBox(
                                width: 15,
                                child: Image.asset('assets/images/del.png'),
                              ),
                              onPressed: () {},
                            ),
                            const Text(
                              '삭제',
                              style: TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
