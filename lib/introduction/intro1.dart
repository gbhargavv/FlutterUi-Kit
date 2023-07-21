import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/introduction/anim_utils.dart';

class Intro1 extends StatelessWidget {
  final AnimationController animationController;

  const Intro1({Key? key, required this.animationController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: AnimUtils.animate(
          animationController, Offset(0, 1), Offset(0, 0), 0.0, 0.2),
      child: SlideTransition(
        position: AnimUtils.animate(
            animationController, Offset(0, 0), Offset(-1, 0), 0.2, 0.4),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: AnimUtils.animate(
                    animationController, Offset(0, -2), Offset(0, 0), 0.0, 0.2),
                child: Text("Intro 1",
                    style:
                        TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold)),
              ),
              SlideTransition(
                position: AnimUtils.animate(
                    animationController, Offset(0, 0), Offset(-2, 0), 0.2, 0.4),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 64, right: 64, top: 16, bottom: 16),
                  child: Text(
                      "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore",
                      textAlign: TextAlign.center),
                ),
              ),
              SlideTransition(
                position: AnimUtils.animate(
                    animationController, Offset(0, 0), Offset(-4, 0), 0.2, 0.4),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 350, maxHeight: 250),
                  child: Image.asset('images/intro_1.png', fit: BoxFit.contain),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
