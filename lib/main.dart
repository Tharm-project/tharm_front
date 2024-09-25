import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:tharmproject/screens/detailed_screen.dart';
import 'package:tharmproject/screens/home_screen.dart';
import 'package:tharmproject/screens/learning_screen.dart';
import 'package:tharmproject/screens/login_screen.dart';
import 'package:tharmproject/screens/pdf_screen.dart';
import 'package:tharmproject/screens/translation_screen.dart';
import 'package:tharmproject/screens/video_player_view.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF7F7F7),
      ),
      initialRoute: '/',
      // initialRoute: '/show/video',
      getPages: [
        // GetPage(name: '/', page: () => const LoginScreen()), //로그인

        GetPage(name: '/home', page: () => const HomeScreen()), //홈 탭
        GetPage(name: '/learn', page: () => const LearningScreen()), //학습 탭
        GetPage(name: '/learn/detail', page: () => const DetailedScreen()), //학습하기 상세

        GetPage(name: '/detail/video', page: () => const TranslationScreen()), //수어 번역
        GetPage(name: '/show/video', page: () => VideoPlayerView()), //동영상 재생 스크린

        GetPage(name: '/pdf', page: () => const PdfScreen()), //PDF
      ],
      home: const LoginScreen(),
    );
  }
}
