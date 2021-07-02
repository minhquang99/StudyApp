import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:quizzapp/models/question.dart';
import 'package:quizzapp/widgets/result_screen.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late PageController _pageController;

  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;
  PageController get pageController => this._pageController;

  List<Question> _questions = data
      .map(
        (question) => Question(
            id: question['id'],
            answer: question['answer'],
            options: question['options'],
            question: question['question']),
      )
      .toList();

  List<Question> get questions => this._questions;

  bool _isAnswer = false;
  bool get isAnswer => this._isAnswer;

  late int _correctAns;
  int get correctAns => this._correctAns;

  late int _selectAns;
  int get selectAns => this._selectAns;

  RxInt _questionNum = 1.obs;
  RxInt get questionNum => this._questionNum;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  @override
  void onInit() {
    //thoi luong time_remain la 30s

    _animationController =
        AnimationController(duration: Duration(seconds: 30), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    _animationController.dispose();
    _pageController.dispose();
    super.onClose();
  }

  void checkAnswer(Question question, int selectIndex) {
    //khi user check vao dap an
    _isAnswer = true;
    _correctAns = question.answer;
    _selectAns = selectIndex;

    if (_correctAns == selectIndex) {
      _numOfCorrectAns++;
    }
    _animationController.stop();
    update();

    //khi user check dap an, 3s sau chuyen trang
    Future.delayed(Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNum.value != _questions.length) {
      _isAnswer = false;
      _pageController.nextPage(
          duration: Duration(microseconds: 200), curve: Curves.ease);

      _animationController.reset();
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      Get.to(ResultScreen());
    }
  }

  void updateQsNum(int index) {
    _questionNum.value = index + 1;
  }
}
