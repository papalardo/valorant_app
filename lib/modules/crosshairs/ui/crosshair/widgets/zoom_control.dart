import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/bloc/crosshair_bloc.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/crosshair_provider.dart';

class ZoomControl extends StatelessWidget {
  const ZoomControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CrosshairProvider(
      builder: (_, state, bloc) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [1, 2, 3].map((zoomSize) {
            return IconButton(
              onPressed: () {
                bloc.add(UpdateStateConfigEvent(
                  state: state.copyWith(zoomPreview: zoomSize),
                ));
              },
              icon: Text("${zoomSize}x"),
            );
          }).toList(),
        );
      },
    );
  }
}
