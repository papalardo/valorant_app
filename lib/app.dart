import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/utils/palette_colors.dart';
import 'package:valorant_app/utils/routes.dart';
import 'package:valorant_app/utils/scrolls/my_custom_scroll_behavior.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/c${Routes.agents}');

    return MaterialApp.router(
      title: 'My Smart App',
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline6: TextStyle(fontFamily: 'Tungsten'),
          bodyText1: TextStyle(
            fontFamily: 'Poppins',
          ),
          bodyText2: TextStyle(
            fontFamily: 'Poppins',
          ),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
        fontFamily: 'Tungsten',
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: PaletteColors.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: PaletteColors.dark,
          elevation: 0,
        ),
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    ); //
  }
}
