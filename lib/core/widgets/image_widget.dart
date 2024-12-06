import 'dart:typed_data';

import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

class ImageWidget extends StatelessWidget with ThemeMixin {
  const ImageWidget({
    this.uri,
    this.bytes,
    this.width,
    this.height,
    this.borderRadius,
    super.key,
  });

  final String? uri;
  final Uint8List? bytes;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    final radius = borderRadius ?? BorderRadius.zero;
    final border = metrics.border.copyWith(color: colors.border);

    ImageProvider? provider;
    if (bytes != null) {
      provider = MemoryImage(bytes!);
    } else if (uri?.contains('assets') ?? false) {
      provider = AssetImage(uri!);
    } else if (uri?.contains('http') ?? false) {
      provider = NetworkImage(uri!);
    } else {
      provider = null;
    }

    if (provider != null) {
      return ClipRRect(
        borderRadius: radius,
        child: Image(
          width: width,
          height: height,
          image: provider,
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
