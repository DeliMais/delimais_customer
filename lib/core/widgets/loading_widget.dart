import 'dart:io';

import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget with ThemeMixin {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    final fgColor = colors.primary;
    var bgColor = colors.background;
    if (Platform.isIOS) bgColor = colors.primary;

    return SizedBox.square(
      dimension: metrics.icon,
      child: CircularProgressIndicator.adaptive(
        backgroundColor: bgColor,
        valueColor: AlwaysStoppedAnimation(fgColor),
      ),
    );
  }
}
