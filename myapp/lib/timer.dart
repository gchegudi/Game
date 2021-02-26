import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class Timer extends StatefulWidget {
  @override
  _Timer createState() => _Timer();
}

class _Timer extends State<Timer> {
  CountDownController _controller = CountDownController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
          onComplete: () {
            print('Countdown Ended');
          },
        ),
      ),
    );
  }
}
