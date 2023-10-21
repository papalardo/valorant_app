import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshairs/bloc/crosshairs_bloc.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshairs/widgets/crosshair_grid_tile.dart';
import 'package:valorant_app/utils/constants.dart';
import 'package:valorant_app/utils/widgets/safe_area_custom_scroll_view.dart';

class CrosshairsScreen extends StatefulWidget {
  const CrosshairsScreen({Key? key}) : super(key: key);

  @override
  State<CrosshairsScreen> createState() => _CrosshairsScreenState();
}

class _CrosshairsScreenState extends State<CrosshairsScreen> {
  CrosshairsBloc get bloc => Modular.get<CrosshairsBloc>();

  @override
  void initState() {
    Modular.get<CrosshairsBloc>().add(FetchPlayersCrosshairs());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc,
      child: BlocBuilder<CrosshairsBloc, CrosshairsState>(
        builder: (_, state) {
          return state.crosshairs.when(
            idle: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            data: (crosshairs) => SafeAreaCustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: kScreenPaddingHorizontal),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => CrosshairGridTile(crosshairCode: crosshairs[index]),
                      childCount: crosshairs.length,
                    ),
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      maxCrossAxisExtent: 300,
                    ),
                  ),
                ),
              ],
            ),
            error: (error) => Center(
              child: Text("$error"),
            ),
          );
        },
      ),
    );
  }
}
