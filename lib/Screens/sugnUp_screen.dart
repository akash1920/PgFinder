import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pg_guide/main.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  body() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios,color: BLACK,size: 22),

              ct.boldText(text: 'Get Started',size: 25),

              Icon(Icons.arrow_back_ios,color: WHITE,size: 25),
            ],
          ),

          SizedBox(height: 40,),

          ct.regularText(text: 'Name'),
          SizedBox(height: 5,),
          tf.textField(
            hintText: 'Name',
          ),
          SizedBox(height: 20,),

          ct.regularText(text: 'E-Mail'),
          SizedBox(height: 5,),
          tf.textField(),
          SizedBox(height: 20,),

          ct.regularText(text: 'Password'),
          SizedBox(height: 5,),
          tf.textField(),
          SizedBox(height: 20,),

          ct.regularText(text: 'Confirm Password'),
          SizedBox(height: 5,),
          tf.textField(),

          SizedBox(height: 20,),

          bottomButtons(),

        ],
      ),
    );

  }

  bottomButtons() {
    return Container(
      child: Column(
        children: [

          cb.button(
            padding: EdgeInsets.only(top:8,bottom:8,left: 20,right: 20),
            borderRadius: BorderRadius.circular(25),
            color: AMBER,
            borderColor: AMBER,
            child: ct.regularText(text: 'Sign Up'),
          ),

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              cb.button(
                padding: EdgeInsets.only(top:5,bottom:5,left: 20,right: 20),
                borderRadius: BorderRadius.circular(25),
                borderColor: BLACK,
                child: Image.asset('assets/googleLogo.png',height: 25,width: 25,),
              ),

              SizedBox(width: 50,),

              cb.button(
                padding: EdgeInsets.only(top:5,bottom:5,left: 20,right: 20),
                borderColor: BLACK,
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('assets/fbLogo.png',height: 25,width: 25,),
              ),

            ],
          ),


        ],
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE,
      body: body(),
    );
  }
}
