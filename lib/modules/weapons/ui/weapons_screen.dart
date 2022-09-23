import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/weapons/ui/bloc/weapons_bloc.dart';
import 'package:valorant_app/utils/navigator_helper.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class WeaponsScreen extends StatelessWidget {
  const WeaponsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WeaponsBloc bloc = Modular.get();
    return BlocProvider<WeaponsBloc>(
      create: (_) => bloc..add(WeaponsEvent.fetchWeapons()),
        child: BlocConsumer<WeaponsBloc, WeaponsState>(
          listener: (_, state) {
            state.weaponResponse.whenOrNull(data: (weapon) {
              NavigatorHelper.routeIs('/', () {
                Modular.to.pushNamed('/weapon/${weapon.uuid}');
              });
            });
          },
          builder: (BuildContext context, state) {
            return state.weaponsResponse.when(
              idle: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (weapons) {
                var width = MediaQuery.of(context).size.width;
                return GridView.builder(
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 500,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 16 / 9,
                  ),
                  padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
                  itemCount: weapons.length,
                  itemBuilder: (_, index) {
                    var weapon = weapons[index];
                    return GestureDetector(
                      onTap: () => bloc.add(
                        WeaponsEvent.loadWeapon(weapon: weapon),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: kElevationToShadow[4],
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              PaletteColors.black,
                              PaletteColors.dark,
                            ],
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: CachedNetworkImage(
                                    imageUrl: weapon.displayIcon,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 60,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      stops: [
                                        0.6,
                                        1,
                                      ],
                                      colors: [
                                        Colors.transparent,
                                        PaletteColors.primary,
                                      ],
                                    ),
                                  ),
                                ).opacity(0.3),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 3,
                                        decoration: BoxDecoration(
                                          color: PaletteColors.primary,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(weapon.displayName)
                                          .fontFamily('valorant')
                                          .fontSize(20),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              error: (error) => Center(
                child: Text("$error"),
              ),
            );
          },
        )
    );
  }
}
