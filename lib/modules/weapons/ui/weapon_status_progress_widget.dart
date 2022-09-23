import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class WeaponStatusProgress extends StatelessWidget {
  const WeaponStatusProgress({
    Key? key,
    required this.title,
    required this.value,
    required this.maxValue,
    this.unit,
  }) : super(key: key);

  final String title;
  final String? unit;
  final num value;
  final num maxValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title.toUpperCase()).fontSize(14),
        Row(
          children: [
            Flexible(
              child: LinearProgressIndicator(
                value: value / maxValue,
                backgroundColor: Colors.grey[800],
              ).clipRRect(all: 10),
            ),
            const SizedBox(width: 15),
            Text("${value.toStringAsFixed(1)} $unit").fontSize(12),
          ],
        )
      ],
    );
  }
}
