import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/utils/extensions/string.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class PillWidget extends StatelessWidget {
  final String label;

  const PillWidget(this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(label.capitalize())
        .fontSize(12)
        .bold()
        .padding(horizontal: 5)
        .backgroundColor(PaletteColors.primary)
        .clipRRect(all: 20);
  }
}
