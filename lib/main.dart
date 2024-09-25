import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
// import 'package:tharmproject/screens/home_screen.dart';
import 'package:tharmproject/screens/learning_screen.dart';
// import 'package:tharmproject/screens/login_screen.dart';
// import 'package:tharmproject/json_test.dart';
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
        // scaffoldBackgroundColor: Colors.white,
        // colorScheme: ColorScheme.fromSeed(
        //     seedColor: const Color.fromARGB(255, 192, 145, 145)),
        // useMaterial3: true,
      ),
      initialRoute: '/show/video',
      getPages: [
        GetPage(name: '/', page: () => const LearningScreen()),
        GetPage(name: '/show/video', page: () => VideoPlayerView()),
      ],
      // home: const LoginScreen(),
      // home: const HomeScreen(),
      // home: const LearningScreen(),
      // home: const TranslationScreen(),
      // home: const PdfScreen(),
      // home: Test1234(),
      // home: TestTest(),
      home: LearningScreen(),
    );
  }
}
