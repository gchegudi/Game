import 'package:flutter/services.dart';

import 'OpenPage.dart';
import 'SettingPage.dart';
import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
//import 'package:toast/toast.dart';
import 'dart:math';

class FormFileds extends StatefulWidget {
  _FormFileds createState() => _FormFileds();
}

class _FormFileds extends State<FormFileds> {
  List<int> list = List();
  List<int> list1 = List();

  var num1 = new TextEditingController();
  var num2 = new TextEditingController();
  var num3 = new TextEditingController();
  var num4 = new TextEditingController();
  var num5 = new TextEditingController();

  List<int> _textFormFieldValues() {
    list1.clear();
    int _num1 = int.parse(num1.text);
    int _num2 = int.parse(num2.text);
    int _num3 = int.parse(num3.text);
    int _num4 = int.parse(num4.text);
    int _num5 = int.parse(num5.text);
    list1 = [_num1, _num2, _num3, _num4, _num5];
    return list1;
  }

  _equalValues(var list, list1) {
    if (list.length != list1.length) {
      return _showAlertDialogforWrong();
    } else {
      for (var i = 0; i < list.length; i++) {
        if (list[i] != list1[i]) {
          return _showAlertDialogforWrong();
        }
      }
    }
    return _showAlertDialogforRight();
  }

  _showAlertDialogforRight() {
    Widget okButton = FlatButton(
      child: Text(
        'Ok',
      ),
      onPressed: () {},
    );
    AlertDialog alert = AlertDialog(
      title: Text(
        'Correct',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
      content: Icon(
        Icons.done,
        color: Colors.blue,
        size: 140,
      ),
      actions: [okButton],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  _showAlertDialogforWrong() {
    Widget okButton = FlatButton(
      child: Text('Ok'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text(
        'wrong',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
      content: Icon(
        Icons.dangerous,
        color: Colors.blue,
        size: 140,
      ),
      actions: [okButton],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
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

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  initScreen(BuildContext context) {
    return Material(
        child: Scaffold(
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
                    mainAxisSize: MainAxisSize.max,
                    verticalDirection: VerticalDirection.down,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                  __getRandomNumbers(),
                  _getTimer(),
                  Container(
                    child: _textFormField(),
                  ),
                  Container(
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
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        )),
                        Container(
                            child: RaisedButton(
                          color: Colors.black,
                          textColor: Colors.white,
                          child: Text(
                            'Check',
                          ),
                          onPressed: () {
                            _equalValues(list, list1);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ))
                      ],
                    ),
                  )
                ]))));
  }

  _textFormField() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: TextFormField(
                controller: num1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
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
                controller: num2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
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
                controller: num3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
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
                controller: num4,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
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
                controller: num5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
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
        //_getRaisedButton()
      ],
    );
  }

  _getTimer() {
    CountDownController _controller = CountDownController();

    return Center(
      child: CircularCountDownTimer(
        height: 100,
        width: 100,
        duration: 20,
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
            onPressed: () {},
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
