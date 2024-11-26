import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';

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
    final (_, metrics) = getTheme(context);

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Center(child: body),
      bottomNavigationBar: navBar,
      appBar: appBar != null
          ? PreferredSize(
              preferredSize: metrics.appBar,
              child: appBar!,
            )
          : null,
    );
  }
}
