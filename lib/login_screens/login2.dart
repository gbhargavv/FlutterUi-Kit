import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/login_screens/utils/WidgetUtils.dart';

import '../utils/colors.dart';

class Login2 extends StatefulWidget {
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtil.color_1,
      body: CustomShape(),
    );
  }
}

class CustomShape extends StatefulWidget {
  @override
  _CustomShapeState createState() => _CustomShapeState();
}

class _CustomShapeState extends State<CustomShape> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CustomPaint(
            painter: CurvePainter(),
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
              height: 500,
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'login'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  _textField,
                  SizedBox(height: 10),
                  _passwordField,
                  SizedBox(height: 10),
                  ForgetPasswordButton(color: Colors.black, rightPadding: 0),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                         icon: (!Platform.isIOS)
                            ? Icon(Icons.arrow_forward, size: 30)
                            : Icon(Icons.arrow_forward_ios, size: 30),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget get _textField => TextField(
        style: TextStyle(color: Colors.black),
        textAlign: TextAlign.left,
        obscureText: false,
        autocorrect: false,
        cursorColor: Colors.black,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: 'User Name',
          hintStyle: TextStyle(color: Colors.black),
        ),
      );

  Widget get _passwordField => TextField(
        style: TextStyle(color: Colors.black),
        textAlign: TextAlign.left,
        obscureText: true,
        autocorrect: false,
        cursorColor: Colors.black,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: TextStyle(color: Colors.black),
        ),
      );
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()..color = Colors.white;
    // create a path
    var path = Path();
    path.moveTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width, size.height, size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
