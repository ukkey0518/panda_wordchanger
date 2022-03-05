enum Flavor {
  DEV,
  PRD,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'panda-wordchanger-dev';
      case Flavor.PRD:
        return 'panda-wordchanger-prd';
      default:
        return 'title';
    }
  }

}
