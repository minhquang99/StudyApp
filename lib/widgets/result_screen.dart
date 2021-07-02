import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzapp/constants.dart';
import 'package:quizzapp/controllers/questions_controller.dart';

class ResultScreen extends StatelessWidget {
  QuestionController _questionController = Get.put(QuestionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/screen.jpg'), fit: BoxFit.cover)),
          ),
          SafeArea(
            child: Column(
              children: [
                Spacer(
                  flex: 4,
                ),
                Text(
                  'Score',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Spacer(),
                checkMark(),
                Spacer(),
                Text(
                    '${_questionController.numOfCorrectAns * 10}/${_questionController.questions.length * 10}',
                    style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                Spacer(
                  flex: 4,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  checkMark() {
    if (_questionController.numOfCorrectAns >=
        _questionController.questions.length * 80 / 100) {
      return Text('EXCELLENT!',
          style: TextStyle(
              fontSize: 24, color: kGreenColor, fontWeight: FontWeight.bold));
    } else if (_questionController.numOfCorrectAns <
            _questionController.questions.length * 80 / 100 &&
        _questionController.numOfCorrectAns >=
            _questionController.questions.length * 50 / 100) {
      return Text('GOOD!',
          style: TextStyle(
              fontSize: 24,
              color: Colors.yellow[200],
              fontWeight: FontWeight.bold));
    }
    return Text('BAD!',
        style: TextStyle(
            fontSize: 24, color: Colors.red[200], fontWeight: FontWeight.bold));
  }
}
