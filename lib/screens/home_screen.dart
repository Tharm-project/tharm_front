import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:tharmproject/widgets/home-menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        // crossAxisAlignment: CrossAxisAlignment.center,
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
                      child: Row(
                        children: [
                          SizedBox(
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      width: 80,
                                      height: 80,
                                      child: Image.asset(
                                        'assets/images/loding.png'),
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
                                const SizedBox(
                                  height: 5,
                                ),
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
                                const SizedBox(
                                  height: 14,
                                ),
                                EasyRichText(
                                  "안녕하세요!\n김수민 님",
                                  defaultStyle: const TextStyle(fontSize: 18),
                                  patternList: [
                                    EasyRichTextPattern(
                                      targetString: '김수민',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold))
                                  ],
                                ),
                                const SizedBox(
                                  height: 7,
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
                    ),
                    Positioned(
                      width: 110,
                      height: 30,
                      bottom: 0,
                      left: 90,
                      child: SizedBox(
                        // width: 130,
                        height: 30,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                            backgroundColor: const Color(0xff85B3F8)),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 567,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40),
                                    ),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(16, 34, 21, 0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              '진행중인 학습 목록',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: (){}, 
                                              icon: const Icon(Icons.close_outlined)
                                            ),
                                          ],
                                        ),
                                        Container(
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
                                                  TextButton(
                                                    onPressed: (){}, 
                                                    style: TextButton.styleFrom(
                                                      backgroundColor: const Color(0xff85B3F8),
                                                      padding: const EdgeInsets.fromLTRB(13, 16, 13, 8),
                                                    ),
                                                    child: const SizedBox(
                                                      width: 70,
                                                      height: 30,
                                                      child: Text(
                                                        '학습하기',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color:Colors.white
                                                        ),
                                                      )
                                                    )
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
                                                    alignment: Alignment.centerRight, // 왼쪽 정렬
                                                    child: Text(
                                                      '99.9% 진행완료~!',
                                                      style: TextStyle(
                                                        fontSize: 10
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 6,),
                                                  SizedBox(
                                                    child: Image(image: AssetImage('assets/images/graph.png')),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }
                            );
                          },
                          child: const Text(
                            '학습 이어서 보기',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.white
                            ),
                          ),
                        ),
                      )
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 45,
              ),

              // 두번째 박스
              const SizedBox(
                width: 235,
                height: 220,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(),
                          SizedBox(
                            width: 55,
                          ),
                          CustomButton()
                        ],
                      ),
                      SizedBox(
                        height: 39,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(),
                          SizedBox(
                            width: 55,
                          ),
                          CustomButton(),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 42,
              ),

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
                      width: 288,
                      height: 75,
                      child: Image(
                        image: AssetImage('assets/images/banner0.png')),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ],
      )
    );
  }
}
