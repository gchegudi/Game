import 'package:flutter/material.dart';
import 'ReGame.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPage createState() => _StartPage();
}

class _StartPage extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset('assets/images/NewIcon 2.png'),
          title: Text('MindGame'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Container(
                child: Image(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                      'https://media3.giphy.com/media/8lQyyys3SGBoUUxrUp/200w.webp?cid=ecf05e47vidr170psi7703g2iwk6a5c7ma0wxpsvs55cpfux&rid=200w.webp'),
                ),
              ),
              Container(
                child: Text(
                  "It's Simple Number Game, That randomly Displays Various Numbers and within Time Limit, So You have to Give the Same Numbers To Value Boxs in the Game",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Container(
                  child: RaisedButton(
                color: Colors.black,
                textColor: Colors.white,
                child: Text(
                  'Start',
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Game()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
