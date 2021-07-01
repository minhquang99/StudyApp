import 'package:flutter/material.dart';
import 'package:quizzapp/components/body.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //elevation: 0,
        actions: [FlatButton(onPressed: () {}, child: Text('Skip'))],
      ),
      body: Body(),
    );
  }
}
