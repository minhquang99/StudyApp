import 'package:flutter/material.dart';
import 'package:quizzapp/constants.dart';
import 'package:quizzapp/widgets/test_page.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/screen.jpg'), fit: BoxFit.cover)),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Text("Let's Play Test",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text(
                    'Enter your name: ',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  Spacer(),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Your name',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => TestPage()));
                    },
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text("Let's Start Test"),
                    ),
                  ),
                  Spacer(flex: 2),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
