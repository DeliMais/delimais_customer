import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageWidget extends StatelessWidget with ThemeMixin {
  const PageWidget({
    required this.body,
    this.appBar,
    this.appBarSize,
    this.navBar,
    super.key,
  });

  final Widget body;
  final Widget? appBar;
  final Size? appBarSize;
  final Widget? navBar;

  @override
  Widget build(BuildContext context) {
    final theme = getThemeData(context);
    final (_, metrics) = getTheme(context);

    var barBrightness = Brightness.light;
    var barIconBrightness = Brightness.dark;
    switch (theme.brightness) {
      case Brightness.light:
        barBrightness = theme.brightness;
        barIconBrightness = Brightness.dark;
      case Brightness.dark:
        barBrightness = Brightness.dark;
        barIconBrightness = theme.brightness;
    }

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: navBar,
      appBar: appBar != null
          ? PreferredSize(
              preferredSize: metrics.appBar,
              child: appBar!,
            )
          : null,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: barBrightness,
          statusBarIconBrightness: barIconBrightness,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: barIconBrightness,
          systemNavigationBarDividerColor: Colors.transparent,
        ),
        child: Center(child: body),
      ),
    );
  }
}
