import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/maps/ui/bloc/maps_bloc.dart';
import 'package:valorant_app/utils/constants.dart';
import 'package:valorant_app/utils/widgets/safe_area_custom_scroll_view.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  MapsBloc get bloc => Modular.get();

  @override
  void initState() {
    bloc.add(LoadMapsEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MapsBloc>(
      create: (_) => bloc,
      child: BlocBuilder<MapsBloc, MapsState>(
        builder: (_, state) {
          return state.maps.when(
            idle: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            data: (maps) {
              return SafeAreaCustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: kScreenPaddingHorizontal),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        var map = maps[index];
                        return Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Stack(
                              children: [
                                CachedNetworkImage(imageUrl: map.image, fit: BoxFit.contain).clipRRect(all: 10),
                                Container(color: Colors.black.withOpacity(0.3)),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(map.displayName).fontFamily('valorant').fontSize(32),
                                ),
                              ],
                            ),
                          ),
                        ).clipRRect(all: 10);
                      }, childCount: maps.length),
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: 1.7,
                        maxCrossAxisExtent: 500,
                      ),
                    ),
                  )
                ],
              );
            },
            error: (error) => Center(child: Text("$error")),
          );
        },
      ),
    );
  }
}
