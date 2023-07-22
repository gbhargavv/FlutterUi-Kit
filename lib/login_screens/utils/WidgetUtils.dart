import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  final String text;
  final Color shadow;
  final double topPadding;

  const ButtonWidget(
      {required this.color,
      required this.text,
      required this.shadow,
      required this.topPadding});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.all(5),
          child: SizedBox(
            height: 45,
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(50.0),
                boxShadow: [
                  BoxShadow(
                    color: shadow,
                    blurRadius: 10,
                    offset: Offset(
                      2.0,
                      2.0,
                    ),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: new BorderRadius.circular(50.0),
                  ),
                  child: Center(
                    child: Text(
                      text.toUpperCase(),
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

class ForgetPasswordButton extends StatelessWidget {
  final Color color;
  final double rightPadding;

  const ForgetPasswordButton({required this.color, required this.rightPadding});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
          padding: EdgeInsets.fromLTRB(0, 5, rightPadding, 0),
          child: SizedBox(
            height: 30,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: new BorderRadius.circular(50.0)),
              child: Text('Forget Password?',
                  style: TextStyle(fontSize: 15, color: color)),
            ),
          )),
    );
  }
}
