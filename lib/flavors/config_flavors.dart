// ignore_for_file: constant_identifier_names

import 'package:app_flavors/app/app_module.dart';
import 'package:app_flavors/app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

enum Flavor {
  DESENV(
    appName: 'appDesenv',
    baseUrl: 'https://ambiente_desenv.br',
    sso: 'https://sso_url_desenv',
    showDebugBanner: true,
  ),
  HOMOLOG(
    appName: 'appHomolog',
    baseUrl: 'https://ambiente_homolog.br',
    sso: 'https://sso_url_homolog',
  ),
  PILOTO(
    appName: 'appPiloto',
    baseUrl: 'https//ambiente_piloto.br',
    sso: 'https://sso_url_piloto',
  ),
  INCIDENTES(
    appName: 'appIncidentes',
    baseUrl: 'https://ambiente_incidentes.br',
    sso: 'https://sso_url_incidentes',
  ),

  PRODUCAO(
    appName: 'appProducao',
    baseUrl: 'https://ambiente_producao.br',
    sso: 'https://sso_url_producao',
  );

  final String appName;
  final String baseUrl;
  final String sso;
  final bool showDebugBanner;

  const Flavor({
    this.appName = '',
    this.baseUrl = '',
    this.sso = '',
    this.showDebugBanner = false,
  });
}

///Inicia o flavor passado
void initFlavor(Flavor flavor) {
  App.flavorConfig = flavor;

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

class App {
  static Flavor? flavorConfig;

  static Flavor get flavor => flavorConfig ?? Flavor.DESENV;
}
