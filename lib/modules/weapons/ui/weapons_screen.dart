import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/weapons/ui/bloc/weapons_bloc.dart';
import 'package:valorant_app/utils/palette_colors.dart';
import 'package:valorant_app/utils/routes.dart';
import 'package:valorant_app/utils/widgets/safe_area_custom_scroll_view.dart';

class WeaponsScreen extends StatefulWidget {
  const WeaponsScreen({Key? key}) : super(key: key);

  @override
  State<WeaponsScreen> createState() => _WeaponsScreenState();
}

class _WeaponsScreenState extends State<WeaponsScreen> {
  WeaponsBloc get bloc => Modular.get();

  @override
  void initState() {
    bloc.add(WeaponsEvent.fetchWeapons());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeaponsBloc, WeaponsState>(
      bloc: bloc,
      builder: (BuildContext context, state) {
        return state.weaponsResponse.when(
          idle: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          data: (weapons) {
            return SafeAreaCustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      var weapon = weapons[index];
                      return GestureDetector(
                        onTap: () {
                          bloc.add(WeaponsEvent.loadWeapon(weapon: weapon));
                          Modular.to.pushNamed(Routes.weaponView.replaceFirst(':weapon', weapon.uuid));
                        },
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
                                        Text(weapon.displayName).fontFamily('valorant').fontSize(20),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }, childCount: weapons.length),
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 500,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 16 / 9,
                    ),
                  ),
                ),
              ],
            );
          },
          error: (error) => Center(
            child: Text("$error"),
          ),
        );
      },
    );
  }
}
