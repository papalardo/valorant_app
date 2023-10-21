import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/agent/agent_module.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/crosshair_module.dart';
import 'package:valorant_app/modules/home/home.module.dart';
import 'package:valorant_app/modules/weapons/weapons_module.dart';
import 'package:valorant_app/services/http/http_inferface.dart';
import 'package:valorant_app/services/http/implementation/dio/http_dio.dart';

import 'app.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

class AppModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind.factory<HttpInterface>((i) => HttpDio(baseUrl: 'https://valorant-api.com/v1/')),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ModuleRoute('/', module: HomeModule()),
      ModuleRoute('/', module: AgentModule()),
      ModuleRoute('/', module: CrosshairModule()),
      ModuleRoute('/', module: WeaponsModule()),
    ];
  }
}
