import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 수어 번역
class TranslationScreen extends StatelessWidget {
  const TranslationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 60, 12, 0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Lorem ipsum dolor sit amet,\n consec',
                style: TextStyle(
                  fontSize: 18
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 34, 0, 10),
              // width: 291,
              // height: 291,
              child: Image.asset('assets/images/nemo.png'),
            ),
            Align(
              alignment: Alignment.centerRight, 
              child: 
              SizedBox(
                width: 70,
                height: 40,
                child: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(40),
                          ),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(24, 31, 24, 0),
                            height: 288,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '속도 설정',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    IconButton(
                                      onPressed: (){
                                        Get.back();
                                      },
                                      icon: const Icon(Icons.close_rounded)
                                    )
                                  ],
                                ),
                                TextButton(
                                  onPressed: (){}, 
                                  child: const Text(
                                    '0.5x',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),)
                                ),
                                TextButton(
                                  onPressed: (){}, 
                                  child: const Text(
                                    '1.0x',
                                    style: TextStyle(
                                      fontSize: 20, 
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),)
                                ),
                                TextButton(
                                  onPressed: (){}, 
                                  child: const Text(
                                    '1.5x',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),)
                                ),
                                TextButton(
                                  onPressed: (){}, 
                                  child: const Text(
                                    '2.0x',
                                    style: TextStyle(
                                      fontSize: 20, 
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),)
                                ),
                              ],
                            ),

                          ),
                        );
                      },
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffD9D9D9)),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '1.0x',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 9, 0, 15),
              child: Image.asset('assets/images/Drag.png'),
            ),
            SizedBox(
              width: 67,
              height: 67,
              child: IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xffD9D9D9)
                ),
                icon: const Icon(
                  Icons.play_arrow_rounded,
                  size: 50,
                )),
            )
            
          ],
        ),
      )
    );
  }
}
