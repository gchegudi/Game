import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Setting extends StatefulWidget {
  @override
  _Setting createState() => _Setting();
}

class _Setting extends State<Setting> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controller.text = "2";
    _controller1.text = "3";
    _controller2.text = "9";
    _controller3.text = "12"; // Setting the initial value for the field.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Setting')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Column(children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(child: _digits()),
            SizedBox(
              height: 40,
            ),
            Container(child: _randomNumbers()),
            SizedBox(
              height: 40,
            ),
            Container(child: _randomNumbersTimer()),
            SizedBox(
              height: 40,
            ),
            Container(child: _TimerforEnter()),
            SizedBox(
              height: 40,
            ),
          ])),
        ));
  }

  _digits() {
    return Container(
      width: 400.0,
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.blueGrey,
          width: 2.0,
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              controller: _controller,
              keyboardType: TextInputType.numberWithOptions(
                decimal: false,
                signed: true,
              ),
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ],
            ),
          ),
          Container(
            height: 60.0,
            width: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: InkWell(
                    child: Icon(
                      Icons.add,
                      size: 25.0,
                    ),
                    onTap: () {
                      int currentValue = int.parse(_controller.text);
                      setState(() {
                        currentValue++;
                        _controller.text = (currentValue < 6 ? currentValue : 6)
                            .toString(); // incrementing value
                      });
                    },
                  ),
                ),
                InkWell(
                  child: Icon(
                    Icons.remove,
                    size: 25.0,
                  ),
                  onTap: () {
                    int currentValue = int.parse(_controller.text);
                    setState(() {
                      print("Setting state");
                      currentValue--;
                      _controller.text = (currentValue > 2 ? currentValue : 2)
                          .toString(); // decrementing value
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _randomNumbers() {
    return Container(
      width: 400.0,
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.blueGrey,
          width: 2.0,
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              controller: _controller1,
              keyboardType: TextInputType.numberWithOptions(
                decimal: false,
                signed: true,
              ),
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ],
            ),
          ),
          Container(
            height: 60.0,
            width: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: InkWell(
                    child: Icon(
                      Icons.add,
                      size: 25.0,
                    ),
                    onTap: () {
                      int currentValue = int.parse(_controller1.text);
                      setState(() {
                        currentValue++;
                        _controller1.text =
                            (currentValue < 10 ? currentValue : 10)
                                .toString(); // incrementing value
                      });
                    },
                  ),
                ),
                InkWell(
                  child: Icon(
                    Icons.remove,
                    size: 25.0,
                  ),
                  onTap: () {
                    int currentValue = int.parse(_controller1.text);
                    setState(() {
                      print("Setting state");
                      currentValue--;
                      _controller1.text = (currentValue > 3 ? currentValue : 3)
                          .toString(); // decrementing value
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _randomNumbersTimer() {
    return Container(
      width: 400.0,
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.blueGrey,
          width: 2.0,
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              controller: _controller2,
              keyboardType: TextInputType.numberWithOptions(
                decimal: false,
                signed: true,
              ),
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ],
            ),
          ),
          Container(
            height: 60.0,
            width: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: InkWell(
                    child: Icon(
                      Icons.add,
                      size: 25.0,
                    ),
                    onTap: () {
                      int currentValue = int.parse(_controller2.text);
                      setState(() {
                        currentValue++;
                        _controller2.text =
                            (currentValue < 30 ? currentValue : 30)
                                .toString(); // incrementing value
                      });
                    },
                  ),
                ),
                InkWell(
                  child: Icon(
                    Icons.remove,
                    size: 25.0,
                  ),
                  onTap: () {
                    int currentValue = int.parse(_controller2.text);
                    setState(() {
                      print("Setting state");
                      currentValue--;
                      _controller2.text = (currentValue > 9 ? currentValue : 9)
                          .toString(); // decrementing value
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _TimerforEnter() {
    return Container(
      width: 400.0,
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.blueGrey,
          width: 2.0,
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              controller: _controller3,
              keyboardType: TextInputType.numberWithOptions(
                decimal: false,
                signed: true,
              ),
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ],
            ),
          ),
          Container(
            height: 60.0,
            width: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: InkWell(
                    child: Icon(
                      Icons.add,
                      size: 25.0,
                    ),
                    onTap: () {
                      int currentValue = int.parse(_controller3.text);
                      setState(() {
                        currentValue++;
                        _controller3.text =
                            (currentValue < 30 ? currentValue : 30)
                                .toString(); // incrementing value
                      });
                    },
                  ),
                ),
                InkWell(
                  child: Icon(
                    Icons.remove,
                    size: 25.0,
                  ),
                  onTap: () {
                    int currentValue = int.parse(_controller3.text);
                    setState(() {
                      print("Setting state");
                      currentValue--;
                      _controller3.text =
                          (currentValue > 12 ? currentValue : 12)
                              .toString(); // decrementing value
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
class Setting extends StatefulWidget {
  @override
  _Setting createState() => _Setting();
}

class _Setting extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    int i = 3;
    //for (int i = 2; i <= 6; i++) {}
    return Material(
        child: Scaffold(
            appBar: AppBar(),
            body: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                  Container(
                    child: Text('$i'),
                  ),
                  Container(
                      child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        i++;
                      });
                    },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      )),
                      padding: const EdgeInsets.all(10.0),
                      child:
                          const Text('pluse', style: TextStyle(fontSize: 20)),
                    ),
                  )),
                  Container(
                      child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        i--;
                      });
                    },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      )),
                      padding: const EdgeInsets.all(10.0),
                      child:
                          const Text('Minse', style: TextStyle(fontSize: 20)),
                    ),
                  ))
                ]))));
  }
}*/
