import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/login_screens/login_screens.dart';
import 'package:flutter_ui_kit/utils/colors.dart';
import 'introduction/intro_animation_screen.dart';
import 'login_screens/login1.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Flutter UI Kit'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            button('Intro Animation', () {
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) {
                  return IntroAnimationScreen();
                },
              ));
            }),
            button('Login Screen', () {
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              ));
            }),
          ],
        ),
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