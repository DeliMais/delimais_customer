import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/icon_button_widget.dart';
import 'package:delimais_customer/core/widgets/image_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

class BigAppBarWidget extends StatelessWidget with ThemeMixin {
  const BigAppBarWidget({
    required this.title,
    required this.image,
    this.isBackVisible = false,
    super.key,
  });

  final String title;
  final ImageProvider image;
  final bool isBackVisible;

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
      child: Stack(
        children: [
          Positioned.fill(child: ImageWidget(provider: image)),
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
      ),
    );
  }
}
