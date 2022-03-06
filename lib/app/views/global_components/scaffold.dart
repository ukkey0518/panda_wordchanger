import 'package:flutter/material.dart';
import 'package:panda_wordchanger/app/app_flavor.dart';

/// Platform: Scaffold
///
/// * Flavorがdevの場合はバナーを表示する
///
class PfScaffold extends StatelessWidget {
  const PfScaffold({
    Key? key,
    this.appBar,
    required this.body,
    this.floatingActionButton,
    this.footerButtons,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.restorationId,
  }) : super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final DrawerCallback? onDrawerChanged;
  final Widget? endDrawer;
  final DrawerCallback? onEndDrawerChanged;
  final Widget body;
  final Color? backgroundColor;
  final Widget? floatingActionButton;
  final bool? resizeToAvoidBottomInset;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final List<Widget>? footerButtons;
  final bool primary;
  final String? restorationId;

  @override
  Widget build(BuildContext context) {
    return _FlavorModeBanner(
      child: Scaffold(
        appBar: appBar,
        drawer: drawer,
        onDrawerChanged: onDrawerChanged,
        endDrawer: endDrawer,
        onEndDrawerChanged: onEndDrawerChanged,
        body: body,
        backgroundColor: backgroundColor,
        floatingActionButton: floatingActionButton,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        persistentFooterButtons: footerButtons,
        bottomNavigationBar: bottomNavigationBar,
        bottomSheet: bottomSheet,
        primary: primary,
        restorationId: restorationId,
      ),
    );
  }
}

/// Flavorバナー
///
/// * DEVの場合のみバナーを表示する
///
class _FlavorModeBanner extends StatelessWidget {
  const _FlavorModeBanner({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (AppFlavor.isPrd) {
      return child;
    }
    return Banner(
      location: BannerLocation.topEnd,
      message: AppFlavor.mode.name,
      textDirection: TextDirection.ltr,
      color: Colors.green,
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 11,
        fontWeight: FontWeight.w700,
        height: 1,
        letterSpacing: 4,
      ),
      child: child,
    );
  }
}
