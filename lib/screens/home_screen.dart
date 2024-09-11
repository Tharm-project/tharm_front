import 'dart:ffi';

import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharmproject/widgets/homebtn.dart';
import 'package:tharmproject/widgets/progresslist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          children: [
            const _HomeTitle(title: 'Tharm'),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Column(
                children: [
                  TharmGradientBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    width: 80,
                                    height: 80,
                                    child:
                                        Image.asset('assets/images/loding.png'),
                                  ),
                                  const Positioned(
                                      top: 30,
                                      left: 29,
                                      child: Text(
                                        '45%',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                ],
                              ),
                              const Padding(padding: EdgeInsets.only(top: 5)),
                              const Text(
                                '머시기 학습\n진행률',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 14, 0, 7),
                                child: EasyRichText(
                                  "안녕하세요!\n김수민 님",
                                  defaultStyle: const TextStyle(fontSize: 18),
                                  patternList: [
                                    EasyRichTextPattern(
                                        targetString: '김수민',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                              const Text(
                                '오늘도 저희와 같이\n수어를 배워볼까요?',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff5F5F5F),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    isStackBtn: true,
                    btnTitle: '학습 이어서 보기',
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 567,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 28, 19, 0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          '진행중인 학습 목록',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            icon: const Icon(
                                                Icons.close_outlined)),
                                      ],
                                    ),
                                    const ProgressList(),
                                    const ProgressList(),
                                    const ProgressList(),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                  ),
                  // TODO: 메뉴
                  const Padding(padding: EdgeInsets.only(top: 45)),
                  // 두번째 박스
                  const SizedBox(
                    height: 220,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomButton(),
                            CustomButton(),
                          ],
                        ),
                        SizedBox(
                          height: 39,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomButton(),
                            CustomButton(),
                          ],
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 42,
                  ),

                  // TODO: 이벤트
                  // 세번째 박스
                  const SizedBox(
                    child: Center(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '오늘의 이벤트',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '지금 진행중인 이벤트를 확인해보세요.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff656565),
                          ),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        SizedBox(
                          child: Image(
                              image: AssetImage('assets/images/banner0.png')),
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class TharmGradientBox extends StatelessWidget {
  const TharmGradientBox(
      {
        super.key, 
        required this.child, 
        this.isStackBtn, 
        this.onPressed, 
        this.btnTitle
      });
  final Widget child;
  final bool? isStackBtn;
  final Function()? onPressed;
  final String? btnTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 169,
      child: Stack(
        children: [
          Container(
            height: 155,
            padding: const EdgeInsets.fromLTRB(31, 15, 56, 0),
            // padding: const EdgeInsets.fromLTRB(26, 15, 56, 28), //원래
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff73D4F9), Color(0xffD1ECFB)],
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              shape: BoxShape.rectangle,
            ),
            child: child,
          ),
          if (isStackBtn == true)
            Positioned(
                width: 110,
                height: 30,
                bottom: 0,
                left: 130,
                child: SizedBox(
                  height: 30,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        // minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        backgroundColor: const Color(0xff85B3F8)),
                    onPressed: onPressed,
                    child:  Text(
                     btnTitle?? '',
                      style: const TextStyle(fontSize: 11, color: Colors.white),
                    ),
                  ),
                )),
        ],
      ),
    );
  }
}

class _HomeTitle extends StatelessWidget {
  const _HomeTitle({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.fromLTRB(12, 10, 0, 20),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
