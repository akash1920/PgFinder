
import 'package:flutter/material.dart';

class MyTextField {

  textField({TextEditingController controller, String hintText,String labelText}) {
    return TextFormField(
      style: TextStyle(
        //fontSize: 10,
      ),
      controller: controller,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          //fontSize: 12,
        ),

        contentPadding: EdgeInsets.only(top: 0,bottom: 0,left: 20,right: 20),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),

        fillColor: Colors.grey.shade300,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
              color: Colors.transparent,
          ),
        ),
        filled: true,
        labelText: labelText,
        hintText: hintText,
      ),
    );
  }

}