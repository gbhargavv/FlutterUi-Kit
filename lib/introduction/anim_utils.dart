import 'dart:ui';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class AnimUtils {
  static Animation<Offset> animate(AnimationController animationController,
      var begin, var end, var intStart, var intEnd) {
    return Tween<Offset>(begin: begin, end: end).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(
          intStart,
          intEnd,
          curve: Curves.fastOutSlowIn,
        )));
  }
}
