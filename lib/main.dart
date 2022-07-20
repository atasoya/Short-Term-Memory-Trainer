import 'package:flutter/material.dart';
import 'package:shorttermmemorytraning/screens/digit_screen.dart';
import 'screens/index_screen.dart';
import 'screens/start_screen.dart';
import 'screens/answer_screen.dart';
import 'screens/result_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const IndexScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/indexPage":(context) => const IndexScreen(),
        "/startPage":(context) => const startScreen(),
        "/digitScreen":(context) => const DigitScreen(),
        "/answerScreen":(context) => const AnswerScreen(),
        "/resultScreen":(context) => const ResultScreen(),
      },
    );
  }
}