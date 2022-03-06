mixin AppFlavor {
  static late final AppFlavorMode mode;

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

  String get name {
    switch (this) {
      case AppFlavorMode.dev:
        return _devName;
      case AppFlavorMode.prd:
        return _prdName;
    }
  }
}
