import 'package:flutter/widgets.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class ScreenContainer extends StatelessWidget {
  final Widget? child;

  const ScreenContainer({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.6, 1],
          colors: [
            PaletteColors.black,
            Color(0xFF231215),
          ],
        ),
      ),
      child: child,
    );
  }
}
