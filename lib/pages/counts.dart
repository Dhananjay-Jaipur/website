import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class CountPage extends StatefulWidget {
  final countkey;

  CountPage({super.key, required this.countkey});

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  bool isStrat = false;

  Widget Desktop(currentWidth, currentHeight) {
    return VisibilityDetector(
      key: widget.countkey,
      onVisibilityChanged: (val) {
        print(val.visibleFraction);
        if (val.visibleFraction == 1) {
          setState(() {
            isStrat = true;
          });
        } else {
          setState(() {
            isStrat = false;
          });
        }
      },
      child: Container(
        width: double.infinity,
        height: 140,
        color: Colors.black38,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 25),
              height: currentHeight / 4,
              width: currentWidth / 4,
              child: Column(
                children: [
                  (isStrat == false)
                      ? Text(
                          "1+",
                          style: TextStyle(fontSize: 40),
                        )
                      : AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('1+',
                                textStyle: TextStyle(fontSize: 40),
                                speed: Duration(milliseconds: 250)),
                          ],
                          totalRepeatCount: 1,
                        ),
                  Text("office"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: currentHeight / 4,
              width: currentWidth / 4,
              child: Column(
                children: [
                  (isStrat == false)
                      ? Text(
                          "4+",
                          style: TextStyle(fontSize: 40),
                        )
                      : AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('4+',
                                textStyle: TextStyle(fontSize: 40),
                                speed: Duration(milliseconds: 250)),
                          ],
                          totalRepeatCount: 1,
                        ),
                  Text("months"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: currentHeight / 4,
              width: currentWidth / 4,
              child: Column(
                children: [
                  (isStrat == false)
                      ? Text(
                          "3",
                          style: TextStyle(fontSize: 40),
                        )
                      : AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('3',
                                textStyle: TextStyle(fontSize: 40),
                                speed: Duration(milliseconds: 250)),
                          ],
                          totalRepeatCount: 1,
                        ),
                  Text("clients"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: currentHeight / 4,
              width: currentWidth / 4,
              child: Column(
                children: [
                  (isStrat == false)
                      ? Text(
                          "257",
                          style: TextStyle(fontSize: 40),
                        )
                      : AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('257',
                                textStyle: TextStyle(fontSize: 40),
                                speed: Duration(milliseconds: 250)),
                          ],
                          totalRepeatCount: 1,
                        ),
                  Text("proposal"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Mobile(currentWidth, currentHeight) {
    return VisibilityDetector(
      key: widget.countkey,
      onVisibilityChanged: (val) {
        print(val.visibleFraction);
        if (val.visibleFraction == 1) {
          setState(() {
            isStrat = true;
          });
        } else {
          setState(() {
            isStrat = false;
          });
        }
      },
      child: Container(
        width: double.infinity,
        height: 140,
        color: Colors.black38,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(top: 25),
              height: currentHeight / 3,
              child: Column(
                children: [
                  (isStrat == false)
                      ? Text(
                          "1+",
                          style: TextStyle(fontSize: 40),
                        )
                      : AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('1+',
                                textStyle: TextStyle(fontSize: 40),
                                speed: Duration(milliseconds: 250)),
                          ],
                          totalRepeatCount: 1,
                        ),
                  Text("office"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: currentHeight / 3,
              child: Column(
                children: [
                  (isStrat == false)
                      ? Text(
                          "4+",
                          style: TextStyle(fontSize: 40),
                        )
                      : AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('4+',
                                textStyle: TextStyle(fontSize: 40),
                                speed: Duration(milliseconds: 250)),
                          ],
                          totalRepeatCount: 1,
                        ),
                  Text("months"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: currentHeight / 3,
              child: Column(
                children: [
                  (isStrat == false)
                      ? Text(
                          "3",
                          style: TextStyle(fontSize: 40),
                        )
                      : AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('3',
                                textStyle: TextStyle(fontSize: 40),
                                speed: Duration(milliseconds: 250)),
                          ],
                          totalRepeatCount: 1,
                        ),
                  Text("clients"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: currentHeight / 3,
              child: Column(
                children: [
                  (isStrat == false)
                      ? Text(
                          "257",
                          style: TextStyle(fontSize: 40),
                        )
                      : AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('257',
                                textStyle: TextStyle(fontSize: 40),
                                speed: Duration(milliseconds: 250)),
                          ],
                          totalRepeatCount: 1,
                        ),
                  Text("proposal"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    if (currentWidth >= 900) {
      return Desktop(currentHeight, currentWidth);
    } else {
      return Mobile(currentHeight, currentWidth);
    }
  }
}
