import 'package:flutter/material.dart';
import 'package:quizzapp/widgets/test_page.dart';
import 'package:quizzapp/widgets/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: TestPage(),
    );
  }
}
