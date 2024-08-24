import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharmproject/screens/detailed_screen.dart';

class ProgressList extends StatelessWidget {
  const ProgressList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 33),
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
              SizedBox(
                width: 70,
                height: 32, // 원래 30
                child: TextButton(
                  onPressed: () {
                    Get.to(() => const DetailedScreen());
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff85B3F8),
                  ),
                  child: const Text(
                    '학습하기',
                    // textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )),
              )
            ],
          ),
          const Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '이얏호~~~',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '99.9% 진행완료~!',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 6)),
              SizedBox(
                // width: 277, // 원래
                // height: 15, // 원래
                child: Image(image: AssetImage('assets/images/graph.png')),
              )
            ],
          )
        ],
      ),
    );
  }
}
