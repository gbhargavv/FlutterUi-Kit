import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/util/hs_images.dart';
import 'HSIntroScreeen.dart';

class HSSplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HSSpashScreen();
  }
}

class _HSSpashScreen extends State<HSSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation sizeAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    sizeAnimation = Tween<double>(begin: 100.0, end: 200.0).animate(controller);
    controller.addListener(() {
      setState(() {});
    });
    controller.repeat();
    init();
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  init() async {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return HSIntroScreeen();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          Container(color: Colors.white),
          Center(
            child: Image.asset(
              ImageUtils.app_icon,
              height: sizeAnimation.value,
              width: sizeAnimation.value,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
