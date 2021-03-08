import 'package:shared_preferences/shared_preferences.dart';

Future saveDigits(_keydigits, digits) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  preferences.setString(_keydigits, digits);
}

Future getDigits() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  preferences.getString();
}
