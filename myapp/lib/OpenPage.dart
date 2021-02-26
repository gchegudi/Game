import 'dart:math';
import 'SettingPage.dart';
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
      appBar: AppBar(actions: <Widget>[
        IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Setting()));
              });
            })
      ]),
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
                  duration: 9,
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
                  onComplete: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                _textFormField()));
                  },
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

  Widget _textFormField() {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: Center(
                child: Column(
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  verticalDirection: VerticalDirection.down,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ),
                        inputFormatters: [
                          // new LengthLimitingTextInputFormatter(2),
                        ],
                      ),
                      width: 60,
                      height: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ),
                        inputFormatters: [
                          // new LengthLimitingTextInputFormatter(2),
                        ],
                      ),
                      width: 60,
                      height: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ),
                        inputFormatters: [
                          // new LengthLimitingTextInputFormatter(2),
                        ],
                      ),
                      width: 60,
                      height: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ),
                        inputFormatters: [
                          // new LengthLimitingTextInputFormatter(2),
                        ],
                      ),
                      width: 60,
                      height: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ),
                        inputFormatters: [
                          // new LengthLimitingTextInputFormatter(2),
                        ],
                      ),
                      width: 60,
                      height: 35,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                _getTimer(),
                _getRaisedButton()
              ],
            ))));
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
        onComplete: () {
          print('Countdown Ended');
        },
      ),
    );
  }

  _getRaisedButton() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              child: RaisedButton(
            color: Colors.black,
            textColor: Colors.white,
            child: Text(
              'Play Again',
            ),
            onPressed: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => OpenPage()));
              });
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
          )),
          Container(
              child: RaisedButton(
            color: Colors.black,
            textColor: Colors.white,
            child: Text(
              'Submit',
            ),
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
          )),
        ],
      ),
    );
  }
}
/*
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
      onComplete: () {
        Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => FormFileds()));
      },
    ),
  );
}*/
