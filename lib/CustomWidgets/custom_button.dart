import 'package:flutter/material.dart';
import 'package:pg_guide/main.dart';

class MyButton {

  button({Function onPressed,Widget child,EdgeInsets padding,Color color,BorderRadius borderRadius,Color borderColor}) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          color: color,
          borderRadius: borderRadius,
        ),
        child: child,
      ),
    );
  }

}
