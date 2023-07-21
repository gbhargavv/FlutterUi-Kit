import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/introduction/anim_utils.dart';

class TopBackSkipView extends StatelessWidget {
  final AnimationController animationController;
  final VoidCallback onBackClick;
  final VoidCallback onSkipClick;

  const TopBackSkipView({
    Key? key,
    required this.onBackClick,
    required this.onSkipClick,
    required this.animationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _animation = AnimUtils.animate(
        animationController, Offset(0, -1), Offset(0.0, 0.0), 0.0, 0.2);
    final _backAnimation = AnimUtils.animate(
        animationController, Offset(0, 0), Offset(-2, 0), 0.4, 0.6);
    final _skipAnimation = AnimUtils.animate(
        animationController, Offset(0, 0), Offset(2, 0), 0.4, 0.6);

    return SlideTransition(
      position: _animation,
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: 58,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SlideTransition(
                  position: _backAnimation,
                  child: IconButton(
                      onPressed: onBackClick,
                      icon: Icon(Icons.arrow_back_ios_new_rounded)),
                ),
                SlideTransition(
                  position: _skipAnimation,
                  child: IconButton(
                    onPressed: onSkipClick,
                    icon: Text('Skip'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
