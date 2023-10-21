import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class TitleMenu extends StatelessWidget {
  const TitleMenu(
    this.label, {
    Key? key,
    this.active = false,
  }) : super(key: key);

  final String label;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Text(label)
        .fontFamily('valorant')
        .fontSize(20)
        .textColor(Colors.white.withOpacity(active ? 1 : 0.4))
        .textStyle(const TextStyle(decoration: TextDecoration.none))
        .textAlignment(TextAlign.center);
  }
}
