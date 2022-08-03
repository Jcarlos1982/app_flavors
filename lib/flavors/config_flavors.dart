// ignore_for_file: constant_identifier_names

enum Flavor {
  DESENV(
    baseUrl: 'https//ambiente_desenv.br',
  ),
  HOMOLOG(
    baseUrl: 'https//ambiente_homolog.br',
  ),
  PILOTO(
    baseUrl: 'https//ambiente_piloto.br',
  ),
  INCIDENTES(
    baseUrl: 'https//ambiente_incidentes.br',
  ),
  PRODUCAO(
    baseUrl: 'https//ambiente_producao.br',
  );

  final String baseUrl;

  const Flavor({this.baseUrl = ''});
}

class App {
  static Flavor? appFlavor;

  static Flavor get flavor => appFlavor ?? Flavor.DESENV;
}
