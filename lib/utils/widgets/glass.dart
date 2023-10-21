import 'dart:ui';

import 'package:flutter/material.dart';

/**
 * See https://medium.com/@felipe_santos75/glassmorphism-in-flutter-56e9dc040c54
 */
class GlassMorphism extends StatelessWidget {
  final Widget child;
  final double start;
  final double end;
  const GlassMorphism({
    Key? key,
    required this.child,
    required this.start,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(start),
                Colors.black.withOpacity(end),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
