import 'package:flutter/material.dart';
import 'package:quizzapp/models/question.dart';

import '../constants.dart';
import 'body.dart';
import 'options.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({Key? key, required this.question}) : super(key: key);

  final Question question;
  @override
  Widget build(BuildContext context) {
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
            Options(),
            Options(),
            Options(),
            Options()
          ],
        ),
      ),
    );
  }
}
