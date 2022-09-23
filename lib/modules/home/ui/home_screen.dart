import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/agents/ui/agents_screen.dart';
import 'package:valorant_app/modules/cards/ui/cards_screen/cards_screen.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshairs/crosshairs_screen.dart';
import 'package:valorant_app/modules/home/ui/bloc/home_bloc.dart';
import 'package:valorant_app/modules/home/ui/widgets/title_menu.dart';
import 'package:valorant_app/modules/maps/ui/maps_screen.dart';
import 'package:valorant_app/modules/weapons/ui/weapons_screen.dart';
import 'package:valorant_app/utils/palette_colors.dart';
import 'package:valorant_app/utils/widgets/screen_container.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Modular.get<HomeBloc>(),
      child: ScreenContainer(
        child: BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
          HomeBloc bloc = Modular.get();
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: PaletteColors.black,
                    expandedHeight: 80,
                    floating: true,
                    pinned: true,
                    snap: true,
                    bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(40),
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.only(
                          left: 30,
                          right: 0,
                          bottom: 5,
                        ),
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          spacing: 20,
                          children: [
                            'Crosshair',
                            'Agents',
                            'Maps',
                            'Weapons',
                            'Cards',
                          ]
                              .asMap()
                              .map((index, label) {
                                return MapEntry(
                                  index,
                                  TitleMenu(
                                    label,
                                    active: state.selectedIndex == index,
                                  ).gestures(
                                    onTap: () => bloc.add(
                                      HomeEvent.setSelectedIndex(index),
                                    ),
                                  ),
                                );
                              })
                              .values
                              .toList(),
                        ),
                      ),
                    ),
                  )
                ];
              },
              body: BlocBuilder<HomeBloc, HomeState>(
                builder: (_, state) => MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: LazyLoadIndexedStack(
                    index: state.selectedIndex,
                    children: const [
                      CrosshairsScreen(),
                      AgentsScreen(),
                      MapScreen(),
                      WeaponsScreen(),
                      CardsScreen(),
                    ],
                  ).padding(top: 10),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
