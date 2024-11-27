import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/card_widget.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ModalWidget extends StatelessWidget with ThemeMixin {
  const ModalWidget({
    required this.title,
    required this.child,
    this.width,
    this.height,
    this.constraints,
    super.key,
  });

  final String title;
  final Widget child;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return CardWidget(
      width: width ?? double.infinity,
      height: height,
      constraints: constraints,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            child: ContainerWidget(
              width: 60,
              height: 8,
              decoration: BoxDecoration(
                color: colors.background,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SpacerWidget(),
          TextWidget(title, style: TextWidgetStyle.headlineMedium),
          const SpacerWidget(spacing: WidgetSpacing.large),
          Expanded(child: child),
        ],
      ),
    );
  }
}
