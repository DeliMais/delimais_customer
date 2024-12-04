import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget with ThemeMixin {
  const PageWidget({
    required this.body,
    this.resizeToAvoidBottomInset = false,
    this.appBar,
    this.appBarSize,
    this.navBar,
    super.key,
  });

  final Widget body;
  final bool resizeToAvoidBottomInset;
  final Widget? appBar;
  final Size? appBarSize;
  final Widget? navBar;

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      bottomNavigationBar: navBar,
      appBar: appBar != null
          ? PreferredSize(
              preferredSize: metrics.appBar,
              child: appBar!,
            )
          : null,
      body: Center(child: body),
    );
  }
}
