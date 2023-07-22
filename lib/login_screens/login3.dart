import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/login_screens/utils/WidgetUtils.dart';
import 'package:flutter_ui_kit/utils/colors.dart';

class Login3 extends StatefulWidget {
  @override
  _Login3State createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(size: 100),
            SizedBox(height: 30),
            TextField(
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.left,
              autocorrect: false,
              cursorColor: ColorUtil.blue,
              maxLines: 1,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorUtil.blue),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorUtil.blue),
                  ),
                  border: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: ColorUtil.blue)),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: ColorUtil.blue)),
            ),
            SizedBox(height: 20),
            TextField(
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.left,
              autocorrect: false,
              obscureText: true,
              cursorColor: ColorUtil.blue,
              maxLines: 1,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorUtil.blue),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorUtil.blue),
                  ),
                  border: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: ColorUtil.blue)),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: ColorUtil.blue)),
            ),
            SizedBox(height: 20),
            ForgetPasswordButton(color: ColorUtil.blue, rightPadding: 0),
            SizedBox(height: 20),
            ButtonWidget(
                color: ColorUtil.blue,
                shadow: ColorUtil.blue,
                text: 'Login',
                topPadding: 70),
            SizedBox(height: 10),
            ButtonWidget(
                color: ColorUtil.blue,
                shadow: ColorUtil.blue,
                text: 'SignUp',
                topPadding: 10)
          ],
        ),
      ),
    );
  }
}
