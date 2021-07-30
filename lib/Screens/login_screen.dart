import 'package:flutter/material.dart';
import 'package:pg_guide/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();

  body() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ct.boldText(text: 'Pg',color: BLACK,size: 30),
              ct.boldText(text: 'Guide',color: AMBER,size: 25),

            ],
          ),

          SizedBox(height: 20,),

          Stack(
            children: [
              //Container(height: 100,width: 100,color: BLACK,),
              Image.asset('assets/logoImage_noBG.png',height:200,width: 300,),

            ],
          ),

          SizedBox(height: 20,),

          ct.regularText(text: 'E-mail',alignment: TextAlign.start,fontWeight: FontWeight.w600),
          SizedBox(height: 8,),
          tf.textField(controller: emailController,hintText: 'E-mail',),

          SizedBox(height: 16,),

          ct.regularText(text: 'Password',alignment: TextAlign.start,fontWeight: FontWeight.w600),
          SizedBox(height: 8,),
          tf.textField(controller: emailController,hintText: 'Password',),

          SizedBox(height: 30,),

          bottomButtons(),

        ],
      ),
    );
  }

  bottomButtons() {

    return Container(
      child: Column(
        children: [

          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 50,right: 50),
              primary: Colors.grey.shade300,
              backgroundColor: Colors.grey.shade300,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
              onPressed: (){

              },
              child: ct.regularText(text: 'LogIn',color: BLACK),
          ),

          SizedBox(height: 15,),

          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 50,right: 50),
              primary: Colors.grey.shade300,
              backgroundColor: AMBER,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            onPressed: (){

            },
            child: ct.regularText(text: 'LogIn',color: BLACK),
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
