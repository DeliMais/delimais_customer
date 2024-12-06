import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/icon_button_widget.dart';
import 'package:delimais_customer/core/widgets/image_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

class BigAppBarWidget extends StatelessWidget with ThemeMixin {
  const BigAppBarWidget({
    required this.image,
    required this.title,
    this.isBackVisible = false,
    super.key,
  });

  final String image;
  final String title;
  final bool isBackVisible;

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return Stack(
      children: [
        Positioned.fill(child: ImageWidget(uri: image)),
        Positioned.fill(
          child: ColoredBox(color: Colors.black.withOpacity(0.2)),
        ),
        Positioned.fill(
          child: Center(
            child: TextWidget(
              title,
              color: Colors.white,
              style: TextWidgetStyle.headlineLarge,
            ),
          ),
        ),
        if (isBackVisible)
          Positioned(
            top: 0,
            left: metrics.medium,
            child: SafeAreaWidget(
              top: true,
              child: IconButtonWidget(
                fgColor: Colors.white,
                icon: SolarLinearIcons.altArrowLeft,
                onPressed: () => Get.back<void>(),
              ),
            ),
          ),
      ],
    );
  }
}
