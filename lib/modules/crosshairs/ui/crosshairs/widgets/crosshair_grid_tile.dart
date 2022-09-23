import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/crosshairs/infra/models/crosshair_code.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/bloc/crosshair_bloc.dart';
import 'package:valorant_app/modules/crosshairs/ui/utils/crosshair_bgs.dart';
import 'package:valorant_app/modules/crosshairs/ui/utils/crosshair_painter.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class CrosshairGridTile extends StatelessWidget {
  const CrosshairGridTile({
    Key? key,
    required this.crosshairCode,
  }) : super(key: key);

  final CrosshairCode crosshairCode;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Modular.to.pushNamed('/crosshair', arguments: {
          'crosshair': crosshairCode.toCrosshair(),
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: PaletteColors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: PaletteColors.dark, width: 2),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage(CrosshairBgs.defaultFromAsset),
                fit: BoxFit.fill,
              ),
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: CustomPaint(
                painter: CrosshairPainter(
                  crosshair: crosshairCode.toCrosshair(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
