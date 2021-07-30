import 'package:flutter/material.dart';
import 'package:pg_guide/CustomWidgets/custom%20_text.dart';
import 'package:pg_guide/CustomWidgets/custom_button.dart';
import 'package:pg_guide/CustomWidgets/custom_textField.dart';
import 'package:pg_guide/IntroSliders/introSliders.dart';
import 'package:pg_guide/Screens/login_screen.dart';
import 'package:pg_guide/Screens/sugnUp_screen.dart';

Color AMBER = Colors.amber.shade700;
Color APP_COLOR = Color(0xffFFCE35);
const Color GREEN= Color(0xffFF7374);
const Color GREY=Color.fromRGBO(152, 153, 166,1);
const Color DARK_GREY=Color.fromRGBO(90, 92, 113,1);
Color WHITE = Colors.white;
Color BLACK = Colors.black;
Color LIGHT_GREY = Color.fromRGBO(229,243, 207,1);
Color HOME_BG = Color.fromRGBO(245, 249, 255, 1);
Color RED = Color.fromRGBO(255, 14, 14, 1);
Color RED_LIGHT = Color.fromRGBO(236, 175, 196, 1.0);
Color DIVIDER_BG = Color.fromRGBO(234, 234, 234, 1);
Color BLUE = Color.fromRGBO(138, 152, 202, 1.0);
Color LIGHT_GREEN_BG = Color(0xFFF5F9FF);
Color YELLOW= Colors.amber.shade500;


String LANGUAGE_TYPE = 'en';
CustomTextWidget ct = CustomTextWidget();
MyTextField tf = MyTextField();
MyButton cb = MyButton();

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpPage(),
    );
  }
}
