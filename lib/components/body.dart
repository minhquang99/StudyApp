import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzapp/components/question_card.dart';
import 'package:quizzapp/components/time_remain.dart';
import 'package:quizzapp/constants.dart';
import 'package:quizzapp/controllers/questions_controller.dart';
import 'package:quizzapp/models/question.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/screen.jpg'), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RemainTime(),
              SizedBox(
                height: kDefaultPadding,
              ),
              Text.rich(TextSpan(
                  text: 'Question 1',
                  style: TextStyle(fontSize: 27, color: Colors.white),
                  children: [
                    TextSpan(
                      text: '/10',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ])),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Expanded(
                child: PageView.builder(
                    itemCount: _questionController.questions.length,
                    itemBuilder: (context, index) => QuestionCard(
                          question: _questionController.questions[index],
                        )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
