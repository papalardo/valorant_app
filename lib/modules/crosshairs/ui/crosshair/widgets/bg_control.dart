import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/bloc/crosshair_bloc.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/crosshair_provider.dart';
import 'package:valorant_app/modules/crosshairs/ui/utils/crosshair_bgs.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class BgControl extends StatefulWidget {
  const BgControl({Key? key}) : super(key: key);

  @override
  State<BgControl> createState() => _BgControlState();
}

class _BgControlState extends State<BgControl> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return CrosshairProvider(
      builder: (_, state, bloc) {
        var bgList = expanded ? CrosshairBgs.allFromAssets : [state.bgPreview];

        var bgsWidgets = bgList.map((bgAsset) {
          return _createContainer(
            asset: bgAsset,
            onTap: (asset) => _onBoxTap(bloc: bloc, state: state, asset: asset),
          );
        }).toList();

        return Container(
          color: PaletteColors.dark,
          padding: const EdgeInsets.all(5),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            direction: Axis.horizontal,
            children: bgsWidgets,
          ),
        ).clipRRect(all: 5);
      },
    );
  }

  Widget _createContainer({
    required String asset,
    required void Function(String) onTap,
  }) {
    return InkWell(
      onTap: () => onTap(asset),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: SizedBox(
          height: 50,
          width: 50,
          child: Image.asset(asset),
        ),
      ),
    );
  }

  void _onBoxTap({
    required CrosshairBloc bloc,
    required CrosshairState state,
    required String asset,
  }) {
    if (expanded == false) {
      setState(() => expanded = true);
      return;
    }
    setState(() => expanded = false);
    bloc.add(UpdateStateConfigEvent(state: state.copyWith(bgPreview: asset)));
  }
}
