import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'introduction/intro_animation_screen.dart';

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
            GestureDetector(
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) {
                    return IntroAnimationScreen();
                  },
                ));
              },
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.redAccent.shade400,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Text(
                  'Intro Animation'.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}