import 'dart:math';

import 'package:flutter/material.dart';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class OpenPage extends StatefulWidget {
  @override
  _Openpage createState() => _Openpage();
}

class _Openpage extends State<OpenPage> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    CountDownController _controller = CountDownController();

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Container(
              child: Center(
                child: CircularCountDownTimer(
                  height: 100,
                  width: 100,
                  duration: 20,
                  controller: _controller,
                  ringColor: Colors.blue,
                  fillColor: Colors.white,
                  strokeWidth: 5.0,
                  textStyle: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  isReverse: true,
                  isReverseAnimation: false,
                  isTimerTextShown: true,
                  onComplete: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: __getRandomNumbers(),
            ),
            SizedBox(
              height: 20,
            ),
            //_getRaisedButton()
          ],
        ),
      ),
    ));
  }

  __getRandomNumbers() {
    List<int> list = [];
    for (var i = 1; i <= 5; i++) {
      list.add(new Random().nextInt(99));
    }
    return Text(
        '$list'.replaceAll("[", "").replaceAll("]", "").replaceAll(",", " "),
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40));
  }
}

_getTimer() {
  CountDownController _controller = CountDownController();

  return Center(
    child: CircularCountDownTimer(
      height: 100,
      width: 100,
      duration: 7,
      controller: _controller,
      ringColor: Colors.blue,
      fillColor: Colors.white,
      strokeWidth: 5.0,
      textStyle: TextStyle(
          fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.bold),
      isReverse: true,
      isReverseAnimation: false,
      isTimerTextShown: true,
      onComplete: () {},
    ),
  );
}
