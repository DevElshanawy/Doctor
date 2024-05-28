// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import 'package:simple_animations/movie_tween/movie_tween.dart';

class FadeAnimation extends StatelessWidget {
  const FadeAnimation({super.key, required this.delay, required this.child});
  final double delay;
  final Widget child;
  @override

  /// Builds a fade-in animation widget.
  Widget build(BuildContext context) {
    // Define the animation tween.
    final tween = MovieTween()
      ..tween('opacity', Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 100))
          .thenTween('y', Tween(begin: 200.0, end: 0.0),
              duration: const Duration(milliseconds: 1800),
              curve: Curves.easeOut);

    // Build and return the animation widget.
    return PlayAnimationBuilder(
      // Delay the animation by [delay] multiplied by 500ms.
      delay: Duration(milliseconds: (500 * delay).round()),
      tween: tween,
      duration: tween.duration,
      child: child,
      builder: (context, value, child) {
        // Build the actual animation widget.
        return Opacity(
          // Get the opacity value from the animation.
          opacity: value.get('opacity'),
          // Translate the widget vertically by the 'y' value from the animation.
          child: Transform.translate(
            offset: Offset(0, value.get('y')),
            child: child,
          ),
        );
      },
    );
  }
}
