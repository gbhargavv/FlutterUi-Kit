import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/introduction/intro1.dart';
import 'package:flutter_ui_kit/introduction/welcome.dart';
import 'package:flutter_ui_kit/introduction/top_bar.dart';
import 'package:flutter_ui_kit/utils/colors.dart';
import 'intro2.dart';
import 'next_button.dart';

class IntroAnimationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IntroAnimationScreenState();
  }
}

class _IntroAnimationScreenState extends State<IntroAnimationScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));
    _animationController?.animateTo(0.0);
    super.initState();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(_animationController?.value);
    return WillPopScope(
      onWillPop: () async {
        if (_animationController!.value > 0 &&
            _animationController!.value <= 0.2) {
          _animationController?.animateTo(0.0);
          return false;
        } else if (_animationController!.value > 0.2 &&
            _animationController!.value <= 0.4) {
          _animationController?.animateTo(0.2);
          return false;
        } else if (_animationController!.value > 0.4 &&
            _animationController!.value <= 0.6) {
          _animationController?.animateTo(0.4);
          return false;
        } else
          return true;
      },
      child: Scaffold(
        backgroundColor: ColorUtil.intro_bg,
        body: ClipRect(
          child: Stack(
            children: [
              WelcomeScreen(animationController: _animationController!),
              Intro1(animationController: _animationController!),
              Intro2(animationController: _animationController!),
              TopBackSkipView(
                  onBackClick: _onBackClick,
                  onSkipClick: _onSkipClick,
                  animationController: _animationController!),
              CenterNextButton(
                  animationController: _animationController!,
                  onNextClick: _onNextClick)
            ],
          ),
        ),
      ),
    );
  }

  void _onSkipClick() {
    _animationController?.animateTo(0.8,
        duration: Duration(milliseconds: 1200));
  }

  void _onBackClick() {
    if (_animationController!.value >= 0 &&
        _animationController!.value <= 0.2) {
      _animationController?.animateTo(0.0);
    } else if (_animationController!.value > 0.2 &&
        _animationController!.value <= 0.4) {
      _animationController?.animateTo(0.2);
    } else if (_animationController!.value > 0.4 &&
        _animationController!.value <= 0.6) {
      _animationController?.animateTo(0.4);
    }
  }

  void _onNextClick() {
    if (_animationController!.value >= 0 &&
        _animationController!.value <= 0.2) {
      _animationController?.animateTo(0.4);
    } else if (_animationController!.value > 0.2 &&
        _animationController!.value <= 0.4) {
      _animationController?.animateTo(0.6);
    } else if (_animationController!.value > 0.4 &&
        _animationController!.value <= 0.6) {
      _signUpClick();
    }
  }

  void _signUpClick() {
    Navigator.pop(context);
  }
}
