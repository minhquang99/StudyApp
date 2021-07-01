import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:quizzapp/models/question.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  List<Question> _questions = data
      .map(
        (question) => Question(
            id: question['id'],
            answer: question['answer'],
            options: question['option'],
            question: question['question']),
      )
      .toList();

  List<Question> get questions => this._questions;
}
