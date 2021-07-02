import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzapp/constants.dart';
import 'package:quizzapp/controllers/questions_controller.dart';
import 'package:websafe_svg/websafe_svg.dart';

class RemainTime extends StatelessWidget {
  const RemainTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 35,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: GetBuilder<QuestionController>(
                init: QuestionController(),
                builder: (controller) {
                  return Stack(
                    children: [
                      LayoutBuilder(
                          builder: (context, constrains) => Container(
                                width: constrains.maxWidth *
                                    controller.animation.value,
                                decoration: BoxDecoration(
                                    gradient: kPrimaryGradient,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              )),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  '${(controller.animation.value * 30).round()} s'),
                              WebsafeSvg.asset('assets/clock.svg')
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
