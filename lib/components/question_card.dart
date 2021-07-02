import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzapp/controllers/questions_controller.dart';
import 'package:quizzapp/models/question.dart';

import '../constants.dart';
import 'body.dart';
import 'options.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({Key? key, required this.question}) : super(key: key);

  final Question question;
  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Colors.white),
        child: Column(
          children: [
            Text(
              question.question,
              style: TextStyle(color: Colors.black, fontSize: 19),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            ...List.generate(
                question.options.length,
                (index) => Options(
                    index: index,
                    text: question.options[index],
                    press: () =>
                        _questionController.checkAnswer(question, index)))
          ],
        ),
      ),
    );
  }
}
