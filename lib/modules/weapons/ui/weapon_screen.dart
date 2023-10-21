import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/weapons/infra/models/weapon_skin_level_model.dart';
import 'package:valorant_app/modules/weapons/ui/bloc/weapons_bloc.dart';
import 'package:valorant_app/modules/weapons/ui/weapon_status_progress_widget.dart';
import 'package:valorant_app/modules/weapons/ui/widgets/video_player.dart';
import 'package:valorant_app/modules/weapons/weapons_utils/weapons_max_status.dart';
import 'package:valorant_app/utils/api/result_state.dart';
import 'package:valorant_app/utils/paints/random_dots_painter.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class WeaponScreen extends StatelessWidget {
  WeaponsBloc get weaponsBloc => Modular.get();

  const WeaponScreen({Key? key}) : super(key: key);

  void onExit() {
    weaponsBloc.add(WeaponsEvent.clearWeapon());
    weaponsBloc.add(WeaponsEvent.selectWeaponSkinChroma(const ResultState.idle()));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onExit();
        return true;
      },
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                leading: const Icon(Icons.chevron_left).iconSize(32).gestures(
                  onTap: () {
                    Modular.to.pop();
                    onExit();
                  },
                ),
              )
            ];
          },
          body: BlocBuilder<WeaponsBloc, WeaponsState>(
            bloc: weaponsBloc,
            builder: (_, state) {
              return state.weaponResponse.when<Widget>(
                idle: () => SizedBox(),
                loading: () => Center(child: CircularProgressIndicator()),
                error: (error) => Center(child: Text("$error")),
                data: (weapon) {
                  return ListView(
                    padding: const EdgeInsets.only(bottom: 20),
                    scrollDirection: Axis.vertical,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(weapon.displayName).fontFamily('valorant').fontSize(32),
                          ),
                          Container(
                              width: double.infinity,
                              child: CustomPaint(
                                painter: RandomDotsPainter(),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 40,
                                    bottom: 20,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(weapon.getCategoryName().toUpperCase()).fontSize(12).bold(),
                                      const SizedBox(height: 40),
                                      Center(
                                        child: ConstrainedBox(
                                          constraints: const BoxConstraints(
                                            maxWidth: 600,
                                          ),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.fitHeight,
                                            width: double.infinity,
                                            imageUrl: weapon.displayIcon,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Price \$${weapon.shopData?.cost ?? 'Free'}".toUpperCase(),
                                      ).fontSize(12).bold()
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                      Transform.translate(
                        offset: const Offset(0, -10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: PaletteColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          width: double.infinity,
                          height: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      if (weapon.weaponStats != null)
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Stats').fontFamily('valorant').fontSize(18),
                              const SizedBox(height: 10),
                              WeaponStatusProgress(
                                title: "Fire Rate",
                                value: weapon.weaponStats!.fireRate,
                                maxValue: WeaponsMaxStatus.maxFireRate,
                                unit: "bullets/sec",
                              ),
                              WeaponStatusProgress(
                                title: "Magazine",
                                value: weapon.weaponStats!.magazineSize,
                                maxValue: WeaponsMaxStatus.maxMagazineSize,
                                unit: "bullets",
                              ),
                              WeaponStatusProgress(
                                title: "Reload speed",
                                value: weapon.weaponStats!.reloadTimeSeconds,
                                maxValue: WeaponsMaxStatus.maxReloadTimeSeconds,
                                unit: "sec",
                              ),
                              WeaponStatusProgress(
                                title: "Equip speed",
                                value: weapon.weaponStats!.equipTimeSeconds,
                                maxValue: WeaponsMaxStatus.maxEquipTimeSeconds,
                                unit: "sec",
                              ),
                            ],
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Skins').fontFamily('Valorant').fontSize(18),
                          ],
                        ),
                      ),
                      CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 200,
                          aspectRatio: 16 / 9,
                          onPageChanged: (skinIndex, _) {
                            weaponsBloc.add(WeaponsEvent.selectWeaponSkinChroma(
                              const ResultState.idle(),
                            ));
                            weaponsBloc.add(WeaponsEvent.selectWeaponSkin(
                              weapon.skins[skinIndex],
                            ));
                          },
                        ),
                        itemCount: weapon.skins.length,
                        itemBuilder: (
                          BuildContext context,
                          int index,
                          int pageViewIndex,
                        ) {
                          var skin = weapon.skins[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 20,
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: PaletteColors.black,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: kElevationToShadow[4],
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: state.selectedSkinChroma.whenOrNull<Widget?>(
                                          data: (chroma) =>
                                              state.selectedSkin.whenOrNull<Widget?>(data: (selectedSkin) {
                                            if (selectedSkin.uuid == skin.uuid) {
                                              return CachedNetworkImage(
                                                imageUrl: chroma.fullRender,
                                              );
                                            }
                                            return null;
                                          }),
                                        ) ??
                                        CachedNetworkImage(
                                          imageUrl: skin.getDisplayIcon(),
                                        ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: state.selectedSkinChroma
                                        .maybeWhen<Text>(
                                          data: (chroma) => state.selectedSkin.maybeWhen<Text>(
                                            data: (selectedSkin) {
                                              return selectedSkin.uuid == skin.uuid
                                                  ? Text(chroma.displayName)
                                                  : Text(skin.displayName);
                                            },
                                            orElse: () => const Text(''),
                                          ),
                                          orElse: () => Text(skin.displayName),
                                        )
                                        .textAlignment(TextAlign.center),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      state.selectedSkin.maybeWhen(
                        data: (selectedSkin) {
                          return Wrap(
                            spacing: 10,
                            alignment: WrapAlignment.center,
                            children: selectedSkin.chromas.where((chroma) => chroma.swatch != null).map((chroma) {
                              return Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: state.selectedSkinChroma.whenOrNull<Border?>(data: (
                                    selectedChroma,
                                  ) {
                                    if (selectedChroma != chroma) {
                                      return null;
                                    }
                                    return Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    );
                                  }),
                                ),
                                child: Image.network(chroma.swatch!).clipRRect(all: 10),
                              ).gestures(onTap: () {
                                weaponsBloc.add(WeaponsEvent.selectWeaponSkinChroma(ResultState.data(data: chroma)));
                              });
                            }).toList(),
                          );
                        },
                        orElse: () => const SizedBox(),
                      ),
                      const SizedBox(height: 15),
                      state.selectedSkin.maybeWhen(
                        data: (selectedSkin) {
                          if (selectedSkin.levels.length > 1) {
                            return Wrap(
                              spacing: 10,
                              alignment: WrapAlignment.center,
                              children: selectedSkin.levels
                                  .asMap()
                                  .map((
                                    index,
                                    level,
                                  ) {
                                    return MapEntry(
                                      index,
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: PaletteColors.primary,
                                          borderRadius: BorderRadius.circular(99),
                                        ),
                                        child: Center(
                                          child: Text("L${index + 1}"),
                                        ),
                                      ).gestures(
                                          onTap: () => _openLevelOverlay(
                                                context: context,
                                                level: level,
                                              )),
                                    );
                                  })
                                  .values
                                  .toList(),
                            );
                          }
                          return const SizedBox();
                        },
                        orElse: () => const SizedBox(),
                      )
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  _openLevelOverlay({
    required BuildContext context,
    required WeaponSkinLevelModel level,
  }) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: PaletteColors.dark,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: AppVideoPlayer(url: level.streamedVideo!),
          ).clipRRect(all: 10),
        );
      },
    );
  }
}
