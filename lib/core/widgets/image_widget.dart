import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

class ImageWidget extends StatelessWidget with ThemeMixin {
  const ImageWidget({
    required this.provider,
    this.width,
    this.height,
    this.borderRadius,
    super.key,
  });

  final ImageProvider? provider;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    final radius = borderRadius ?? BorderRadius.zero;
    final border = metrics.border.copyWith(color: colors.border);

    if (provider != null) {
      return ClipRRect(
        borderRadius: radius,
        child: Image(
          width: width,
          height: height,
          image: provider!,
          fit: BoxFit.cover,
          gaplessPlayback: true,
        ),
      );
    }

    return ContainerWidget(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: radius,
        border: Border.fromBorderSide(border),
      ),
      child: IconWidget(
        color: colors.onSurface,
        icon: SolarLinearIcons.gallery,
      ),
    );
  }
}
