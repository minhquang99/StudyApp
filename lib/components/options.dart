import 'package:flutter/material.dart';

import '../constants.dart';

class Options extends StatelessWidget {
  const Options({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      margin: EdgeInsets.only(top: kDefaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          border: Border.all(
            color: kGrayColor,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '1. Test',
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                border: Border.all(color: kGrayColor)),
          )
        ],
      ),
    );
  }
}
