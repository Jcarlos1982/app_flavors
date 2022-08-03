// ignore_for_file: constant_identifier_names

enum Flavor {
  DESENV(baseUrl: 'https//ambiente_desenv.br'),
  HOMOLOG(baseUrl: ''),
  PILOTO(baseUrl: ''),
  INCIDENTES(baseUrl: ''),
  PRODUCAO(baseUrl: '');

  final String baseUrl;

  const Flavor({this.baseUrl = ''});
}

class App {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static Flavor get flavor {
    switch (appFlavor) {
      case Flavor.DESENV:
        return Flavor.DESENV;
      case Flavor.HOMOLOG:
        return Flavor.HOMOLOG;
      case Flavor.PILOTO:
        return Flavor.PILOTO;
      case Flavor.INCIDENTES:
        return Flavor.INCIDENTES;
      case Flavor.PRODUCAO:
        return Flavor.PRODUCAO;
      default:
        return Flavor.DESENV;
    }
  }
}
