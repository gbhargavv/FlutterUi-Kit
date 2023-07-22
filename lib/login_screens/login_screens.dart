import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/login_screens/login1.dart';
import 'package:flutter_ui_kit/utils/colors.dart';

import 'login2.dart';
import 'login3.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          backgroundColor: ColorUtil.theme,
          title: Text('Login Ui Template'),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          button('Login 1', () {
            Navigator.push(context, new MaterialPageRoute(
              builder: (context) {
                return Login1();
              },
            ));
          }),
          button('Login 2', () {
            Navigator.push(context, new MaterialPageRoute(
              builder: (context) {
                return Login3();
              },
            ));
          }),
          button('Login 3', () {
            Navigator.push(context, new MaterialPageRoute(
              builder: (context) {
                return Login2();
              },
            ));
          }),
        ],
      ),

    );
  }

  Widget button(String title, var onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          color: ColorUtil.theme,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: Text(
              title.toUpperCase(),
              style: TextStyle(
                  color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }

}
