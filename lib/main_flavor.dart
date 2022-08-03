import 'package:app_flavors/app/app_module.dart';
import 'package:app_flavors/app/app_widget.dart';
import 'package:app_flavors/flavors/config_flavors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

///Inicia o flavor passado
void initFlavor(Flavor flavor) {
  App.appFlavor = flavor;

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
