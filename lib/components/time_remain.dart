import 'package:flutter/material.dart';
import 'package:quizzapp/constants.dart';
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
            child: Stack(
              children: [
                LayoutBuilder(
                    builder: (context, constrains) => Container(
                          width: constrains.maxWidth * 0.5,
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
                        Text('14s'),
                        WebsafeSvg.asset('assets/clock.svg')
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
