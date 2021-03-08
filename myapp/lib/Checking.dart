import 'package:flutter/material.dart';

class Sharedprefes extends StatefulWidget {
  _Sharedprefes createState() => _Sharedprefes();
}

class _Sharedprefes extends State<Sharedprefes> {
  String name = ' ';

  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [buildName()],
          ),
        ),
      );

  Widget buildName() {
    return Container(
        child: TextFormField(
      initialValue: name,
      decoration: InputDecoration(
        hintText: 'your name',
      ),
      onChanged: (name) => setState(() => this.name = name),
    ));
  }
}
