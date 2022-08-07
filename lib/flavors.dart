enum Flavor {
  DESENV,
  HOMOLOG,
  PILOTO,
  INCIDENTES,
  PRODUCAO,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DESENV:
        return 'AppName - Desenvolvimento';
      case Flavor.HOMOLOG:
        return 'App Name - Homologação';
      case Flavor.PILOTO:
        return 'App Name - Piloto';
      case Flavor.INCIDENTES:
        return 'App Name - Incidentes';
      case Flavor.PRODUCAO:
        return 'App Name - Produção';
      default:
        return 'title';
    }
  }

}
