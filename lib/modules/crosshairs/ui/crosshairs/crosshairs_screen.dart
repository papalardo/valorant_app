import 'package:flutter/material.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshairs/bloc/crosshairs_bloc.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshairs/widgets/crosshair_grid_tile.dart';

import 'crosshairs_provider.dart';

class CrosshairsScreen extends StatelessWidget {
  const CrosshairsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CrosshairsProvider(
      onInit: (bloc) => bloc.add(FetchPlayersCrosshairs()),
      builder: (_, state, __) {
        return state.crosshairs.when(
          idle: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          data: (crosshairs) => GridView.builder(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            primary: false,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              maxCrossAxisExtent: 300,
            ),
            itemCount: crosshairs.length,
            itemBuilder: (_, index) => CrosshairGridTile(
              crosshairCode: crosshairs[index],
            ),
          ),
          error: (error) => Center(
            child: Text("$error"),
          ),
        );
      },
    );
  }
}
