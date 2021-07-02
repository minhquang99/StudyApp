import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzapp/components/body.dart';
import 'package:quizzapp/controllers/questions_controller.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //elevation: 0,
        actions: [
          FlatButton(
              onPressed: _questionController.nextQuestion, child: Text('Skip'))
        ],
      ),
      body: Body(),
    );
  }
}
