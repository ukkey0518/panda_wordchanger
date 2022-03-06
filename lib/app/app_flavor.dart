mixin AppFlavor {
  static late final AppFlavorMode mode;

  static bool get isDev => mode.isDev;

  static bool get isPrd => mode.isPrd;

  @override
  String toString() {
    return 'AppFlavor{mode: $mode}';
  }
}

enum AppFlavorMode {
  dev,
  prd,
}

extension AppFlavorModeEx on AppFlavorMode {
  static const _devName = 'dev';
  static const _prdName = 'prd';

  bool get isDev => this == AppFlavorMode.dev;

  bool get isPrd => this == AppFlavorMode.prd;

  String get name {
    switch (this) {
      case AppFlavorMode.dev:
        return _devName;
      case AppFlavorMode.prd:
        return _prdName;
    }
  }
}
