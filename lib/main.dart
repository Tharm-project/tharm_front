import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';
import 'package:tharmproject/api/api_service.dart';
import 'package:tharmproject/screens/detailed_screen.dart';
import 'package:tharmproject/screens/home_screen.dart';
import 'package:tharmproject/screens/learning_screen.dart';
import 'package:tharmproject/screens/login_screen.dart';
import 'package:tharmproject/json_test.dart';
import 'package:tharmproject/screens/pdf_screen.dart';
import 'package:tharmproject/screens/translation_screen.dart';
import 'package:tharmproject/screens/video_player_view.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ApiService());
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF7F7F7),
        // scaffoldBackgroundColor: Colors.white,
        // colorScheme: ColorScheme.fromSeed(
        //     seedColor: const Color.fromARGB(255, 192, 145, 145)),
        // useMaterial3: true,
      ),
      // initialRoute: '/learn/detail',
      initialRoute: '/show/video',
      getPages: [
        GetPage(name: '/', page: () => LoginScreen()), //로그인

        GetPage(name: '/home', page: () => const HomeScreen()), //홈 탭
        // GetPage(name: '/', page: () => const LoginScreen()), //로그인

        GetPage(name: '/home', page: () => const HomeScreen()), //홈 탭
        GetPage(name: '/learn', page: () => const LearningScreen()), //학습 탭
        GetPage(name: '/learn/detail', page: () => DetailedScreen()), //학습하기 상세
        GetPage(
            name: '/learn/detail/video',
            page: () => const TranslationScreen()), //수어 번역

        GetPage(
            name: '/detail/video',
            page: () => const TranslationScreen()), //수어 번역
        GetPage(
            name: '/show/video',
            page: () => VideoPlayerView(
                  viedoId: 0,
                )), //동영상 재생 스크린
        GetPage(name: '/pdf', page: () => const PdfScreen()), //PDF
      ],
      // home: const LoginScreen(),
      // home: const HomeScreen(),
      // home: const LearningScreen(),
      // home: const TranslationScreen(),
      // home: const PdfScreen(),
      // home: Test1234(),
      // home: TestTest(),
    );
  }
}
