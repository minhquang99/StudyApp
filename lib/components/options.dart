import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzapp/controllers/questions_controller.dart';

import '../constants.dart';

class Options extends StatelessWidget {
  const Options({
    Key? key,
    required this.index,
    required this.text,
    required this.press,
  }) : super(key: key);

  final int index;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qController) {
          Color getRightColor() {
            if (qController.isAnswer) {
              if (index == qController.correctAns) {
                return kGreenColor;
              } else if (index == qController.selectAns &&
                  qController.selectAns != qController.correctAns) {
                return kRedColor;
              }
            }
            return kGrayColor;
          }

          IconData getRightIcon() {
            return getRightColor() == kRedColor ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              margin: EdgeInsets.only(top: kDefaultPadding),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  border: Border.all(
                    color: getRightColor(),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${index + 1}. $text",
                    style: TextStyle(fontSize: 15, color: getRightColor()),
                  ),
                  Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: getRightColor() == kGrayColor
                              ? Colors.transparent
                              : getRightColor(),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          border: Border.all(color: getRightColor())),
                      child: getRightColor() == kGrayColor
                          ? null
                          : Icon(
                              getRightIcon(),
                              size: 15,
                            ))
                ],
              ),
            ),
          );
        });
  }
}
