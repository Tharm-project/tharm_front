import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:tharmproject/widgets/home-menu.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        // backgroundColor: Colors.white,
        // title: const Text(
        //   'Tharm',
        //   style: TextStyle(
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold
        //   ),
        // ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(12, 9, 0, 21),
            child: const Text(
              'Tharm',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 첫번째 박스
              SizedBox(
                height: 169,
                child: Stack(
                  // alignment: Alignment.center,
                  children: [
                    Container(
                      width: 290,
                      height: 155,
                      padding: const EdgeInsets.fromLTRB(26, 15, 52, 0),
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
                          Text('최근학습내역'),
                          Text('학습명'),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Text('머시기머시기'),
                              Text('45% 진행완료!'),
                            ],
                          ),
                          SizedBox(
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
                          // width: 130,
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
                    // border바
                    Container(
                      // alignment: Alignment.center,
                      width: 283,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black))
                      ),
                    ),
                  ],
                ),
              ),
              Container(
              ),
              // SizedBox(),
              SizedBox(
                width: 235,
                  // height: 220,
                child: Center(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('전체 학습 내역'),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.close_outlined)),
                        ],
                      ),
                      const Column(
                        children: [
                          Text('학습명'),
                          Text('학습명'),
                          Text('학습명'),
                          SizedBox(
                            child: Image(
                                image: AssetImage('assets/images/graph.png')),
                          )
                        ],
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
