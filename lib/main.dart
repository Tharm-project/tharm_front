import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:tharmproject/screens/login_screen.dart';
import 'firebase_options.dart';

void main() async{
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
      home: const LoginScreen(),
    );
  }
}
