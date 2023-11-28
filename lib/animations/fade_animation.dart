import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation(this.delay, this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween('opacity', Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 500))
          .thenTween('translateX', Tween(begin: 120.0, end: 0.0),
              duration: const Duration(milliseconds: 500));

    return PlayAnimationBuilder<Movie>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, movieValue) {
        return Opacity(
          opacity: 0.99,
          child: Transform.translate(
            offset: const Offset(0.2, 0),
          ),
        );
      },
    );
  }
}
