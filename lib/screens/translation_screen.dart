import 'package:flutter/material.dart';

class TranslationScreen extends StatelessWidget {
  const TranslationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(
            width: 291,
            height: 291,
            child: Image.asset('assets/images/nemo.png'),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('1.0x'),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
          
          
        ],
      ),
    );
  }
}
