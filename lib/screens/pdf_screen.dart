import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PdfScreen extends StatelessWidget {
  const PdfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 52, 25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'PDF 파일 업로드',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,),),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '학습하고 싶은 파일을 업로드해주세요.',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff656565)),),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 36, 0, 63),
              width: 250,
              height: 300,
              child: Image.asset('assets/images/PDF.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 100,
                  height: 40,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: const Color(0xffD9D9D9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      '업로드',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    )),
                ),
                SizedBox(
                  width: 100,
                  height: 40,
                  child: TextButton(
                    onPressed: () {Get.back();},
                    style: TextButton.styleFrom(
                        backgroundColor: const Color(0xffD9D9D9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      '취소',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    )),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
