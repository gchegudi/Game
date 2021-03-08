import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'dart:math';
import 'SettingPage.dart';

class Game extends StatefulWidget {
  @override
  _Game createState() => _Game();
}

class _Game extends State<Game> {
  final FocusScopeNode _node = FocusScopeNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool visible = true;
  bool invisible = true;
  bool isEnable = false;

  var num1 = new TextEditingController();
  var num2 = new TextEditingController();
  var num3 = new TextEditingController();
  var num4 = new TextEditingController();
  var num5 = new TextEditingController();

  List<int> list = List();
  List<int> list1 = List();

  Widget build(BuildContext context) {
    return MaterialApp(
        key: _formKey,
        home: FocusScope(
          node: _node,
          child: Scaffold(
            appBar: AppBar(
              leading: Image.asset('assets/images/NewIcon 2.png'),
              title: Text('Mind Game'),
              centerTitle: true,
              actions: <Widget>[
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
              ],
            ),
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                verticalDirection: VerticalDirection.down,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Visibility(
                    visible: invisible,
                    child: _getRandomNumbers(),
                  ),
                  Visibility(visible: visible, child: _getTimer1()),
                  _getTimer(),
                  Container(child: _textFormField()),
                  _getRaisedButton()
                ],
              ),
            ),
          ),
        ));
  }

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

  _getRandomNumbers() {
    if (visible) {
      list.clear();
      for (var i = 1; i <= 5; i++) {
        list.add(new Random().nextInt(99));
      }
      return Text(
          '$list'.replaceAll("[", "").replaceAll("]", "").replaceAll(",", " "),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40));
    } else {
      return Container();
    }
  }

  _getTimer1() {
    CountDownController _controller = CountDownController();

    return Center(
      child: CircularCountDownTimer(
        height: 100,
        width: 100,
        duration: 9,
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
          setState(() {});
          isEnable = true;
          invisible = false;

          visible = false;
          print('Countdown Ended');
        },
      ),
    );
  }

  _getTimer() {
    if (invisible == false) {
      return _getTimer2();
    } else {
      return Container();
    }
  }

  _getTimer2() {
    CountDownController controller = CountDownController();

    return Center(
      child: CircularCountDownTimer(
        height: 100,
        width: 100,
        duration: 15,
        controller: controller,
        ringColor: Colors.blue,
        fillColor: Colors.white,
        strokeWidth: 5.0,
        textStyle: TextStyle(
            fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.bold),
        isReverse: true,
        isReverseAnimation: false,
        isTimerTextShown: true,
        onComplete: () {
          setState(() {
            isEnable = false;
          });
          invisible = false;

          visible = false;
          print('Countdown Ended');
        },
      ),
    );
  }

  Widget _textFormField() {
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
                enabled: isEnable,
                controller: num1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                inputFormatters: [
                  new LengthLimitingTextInputFormatter(2),
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
                enabled: isEnable,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                inputFormatters: [
                  new LengthLimitingTextInputFormatter(2),
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
                enabled: isEnable,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                inputFormatters: [
                  new LengthLimitingTextInputFormatter(2),
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
                enabled: isEnable,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                inputFormatters: [
                  new LengthLimitingTextInputFormatter(2),
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
                enabled: isEnable,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                inputFormatters: [
                  new LengthLimitingTextInputFormatter(2),
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
      ],
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
                num1.clear();
                num2.clear();
                num3.clear();
                num4.clear();
                num5.clear();
                visible = true;
                invisible = true;
              });
              isEnable = false;
            },
          )),
          Container(
              child: RaisedButton(
            color: Colors.black,
            textColor: Colors.white,
            child: Text(
              'Check',
            ),
            onPressed: () {
              //_equalValues(list, _textFormFieldValues());
              _onSubmit();
              isEnable = false;
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
          )),
        ],
      ),
    );
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
      onPressed: () {
        isEnable = true;

        Navigator.pop(context);
      },
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
        isEnable = true;

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

  _onSubmit() {
    //String num1, num2, num3, num4, num5;
    if (num1 != null ||
        num2 != null ||
        num3 != null ||
        num4 != null ||
        num5 != null) {
      return _equalValues(list, _textFormFieldValues());
    } else {
      return _showAlertDialogforSubmit();
    }
  }

  _showAlertDialogforSubmit() {
    Widget okButton = FlatButton(
      child: Text(
        'Ok',
      ),
      onPressed: () {
        isEnable = true;

        Navigator.pop(context);
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text(
        'Please Select PlayAgain',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
      content: Icon(
        Icons.access_alarm,
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
}
