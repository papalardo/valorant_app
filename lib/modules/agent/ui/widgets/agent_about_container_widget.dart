import 'package:flutter/material.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class AgentAboutContainerWidget extends StatelessWidget {
  const AgentAboutContainerWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      transform: Matrix4.translationValues(0, -10, 0),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 0.5,
            offset: Offset(0, -1),
          )
        ],
        color: PaletteColors.dark,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: child,
    );
  }
}
