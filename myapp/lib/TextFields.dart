import 'OpenPage.dart';
import 'SettingPage.dart';
import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class FormFileds extends StatefulWidget {
  _FormFileds createState() => _FormFileds();
}

class _FormFileds extends State<FormFileds> {
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        OpenPage()));
                          },
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
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ))
                      ],
                    ),
                  )
                ]))));
  }
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
