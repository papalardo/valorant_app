import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/maps/ui/bloc/maps_bloc.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MapsBloc bloc = Modular.get();
    return BlocProvider<MapsBloc>(
      create: (_) => bloc..add(LoadMapsEvent()),
      child: BlocBuilder<MapsBloc, MapsState>(
        builder: (_, state) {
          return state.maps.when(
            idle: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            data: (maps) {
              return GridView.builder(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
                primary: false,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.7,
                  maxCrossAxisExtent: 500,
                ),
                itemCount: maps.length,
                itemBuilder: (_, index) {
                  var map = maps[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Stack(
                        children: [
                          CachedNetworkImage(imageUrl: map.image)
                              .clipRRect(all: 10),
                          Container(color: Colors.black.withOpacity(0.3)),
                          Align(
                            alignment: Alignment.center,
                            child: Text(map.displayName)
                                .fontFamily('valorant')
                                .fontSize(32),
                          ),
                        ],
                      ),
                    ),
                  ).clipRRect(all: 10);
                },
              );
            },
            error: (error) => Center(child: Text("$error")),
          );
        },
      ),
    );
  }
}
