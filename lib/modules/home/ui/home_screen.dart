import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/home/ui/bloc/home_bloc.dart';
import 'package:valorant_app/modules/home/ui/widgets/title_menu.dart';
import 'package:valorant_app/utils/constants.dart';
import 'package:valorant_app/utils/navigator_helper.dart';
import 'package:valorant_app/utils/routes.dart';
import 'package:valorant_app/utils/widgets/glass.dart';
import 'package:valorant_app/utils/widgets/screen_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeBloc get bloc => Modular.get();
  var scrollController = ScrollController();
  int pageIndex = 0;

  Map<String, String> get pages {
    return {
      '/c${Routes.lineups}': 'Lineups',
      '/c${Routes.crosshairs}': 'Crosshair',
      '/c${Routes.agents}': 'Agents',
      '/c${Routes.maps}': 'Maps',
      '/c${Routes.weapons}': 'Weapons',
      '/c${Routes.cards}': 'Cards',
    };
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      child: BlocBuilder<HomeBloc, HomeState>(
        bloc: bloc,
        builder: (_, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                const Align(alignment: Alignment.topCenter, child: RouterOutlet()),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: kNavigationBarHeight,
                    child: GlassMorphism(
                      start: 0.3,
                      end: 0.5,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (var route in pages.keys)
                            TitleMenu(pages[route]!, active: NavigatorHelper.routeIs(route))
                                .gestures(onTap: () {
                                  bloc.add(HomeEvent.setSelectedPage(route));
                                  Modular.to.navigate(route);
                                })
                                .padding(horizontal: 10)
                                .center()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
