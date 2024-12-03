import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/icon_button_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:delimais_customer/core/widgets/wrap_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';
import 'package:statusbarz/statusbarz.dart';

class SliverAppBarWidget extends StatelessWidget with ThemeMixin {
  const SliverAppBarWidget({
    required this.expandedHeight,
    required this.collapsedHeight,
    required this.title,
    this.isBackVisible = true,
    this.background,
    this.actions = const [],
    this.bottom,
    super.key,
  });

  final double expandedHeight;
  final double collapsedHeight;
  final bool isBackVisible;
  final Widget? background;
  final List<IconButtonWidget> actions;
  final Widget? bottom;
  final String title;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final (_, metrics) = getTheme(context);

    final padding = media.padding.top;
    final cHeight = collapsedHeight + padding + metrics.large;

    return SliverPersistentHeader(
      pinned: true,
      delegate: _DelegateWidget(
        expandedHeight: expandedHeight,
        collapsedHeight: cHeight,
        isBackVisible: isBackVisible,
        background: background,
        actions: actions,
        bottom: bottom,
        title: title,
      ),
    );
  }
}

class _DelegateWidget extends SliverPersistentHeaderDelegate with ThemeMixin {
  const _DelegateWidget({
    required this.expandedHeight,
    required this.collapsedHeight,
    required this.isBackVisible,
    required this.background,
    required this.actions,
    required this.bottom,
    required this.title,
  });

  final double expandedHeight;
  final double collapsedHeight;
  final bool isBackVisible;
  final Widget? background;
  final List<IconButtonWidget> actions;
  final Widget? bottom;
  final String title;

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => collapsedHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final (colors, metrics) = getTheme(context);
    final progress = shrinkOffset / expandedHeight;
    final hiddenOpacity = progress.clamp(0.0, 1.0) < 0.6 ? 1.0 : 0.0;
    final showingOpacity = progress.clamp(0.0, 1.0) > 0.6 ? 1.0 : 0.0;

    if (hiddenOpacity == 1) {
      Statusbarz.instance.setDarkStatusBar();
    } else {
      Statusbarz.instance.setLightStatusBar();
    }

    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        if (background != null) background!,
        if (background != null)
          AnimatedOpacity(
            curve: metrics.curve,
            duration: metrics.duration,
            opacity: showingOpacity,
            child: ColoredBox(color: colors.background),
          ),
        if (isBackVisible || actions.isNotEmpty)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
              curve: metrics.curve,
              duration: metrics.duration,
              opacity: hiddenOpacity,
              child: _TopWidget(
                isBackVisible: isBackVisible,
                actions: actions,
              ),
            ),
          ),
        AnimatedOpacity(
          curve: metrics.curve,
          duration: metrics.duration,
          opacity: showingOpacity,
          child: _HeaderWidget(
            title: title,
            isBackVisible: isBackVisible,
            actions: actions,
          ),
        ),
        if (bottom != null)
          Positioned(
            bottom: -100,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
              curve: metrics.curve,
              duration: metrics.duration,
              opacity: hiddenOpacity,
              child: _BottomWidget(child: bottom!),
            ),
          ),
      ],
    );
  }
}

class _TopWidget extends StatelessWidget with ThemeMixin {
  const _TopWidget({
    required this.isBackVisible,
    required this.actions,
  });

  final bool isBackVisible;
  final List<IconButtonWidget> actions;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return SafeAreaWidget(
      top: true,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: metrics.medium).copyWith(
          top: metrics.small,
        ),
        child: Row(
          children: [
            if (isBackVisible)
              IconButtonWidget(
                isFilled: true,
                icon: SolarLinearIcons.altArrowLeft,
                onPressed: () => Get.back<void>(),
              ),
            Expanded(
              child: WrapWidget(
                alignment: WrapAlignment.end,
                children: actions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomWidget extends StatelessWidget with ThemeMixin {
  const _BottomWidget({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: metrics.medium),
      child: child,
    );
  }
}

class _HeaderWidget extends StatelessWidget with ThemeMixin {
  const _HeaderWidget({
    required this.title,
    required this.isBackVisible,
    required this.actions,
  });

  final String title;
  final bool isBackVisible;
  final List<IconButtonWidget> actions;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return SafeAreaWidget(
      top: true,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: metrics.medium),
        child: Row(
          children: [
            if (isBackVisible)
              IconButtonWidget(
                iconSize: metrics.icon * 1.4,
                icon: SolarLinearIcons.altArrowLeft,
                onPressed: () => Get.back<void>(),
              ),
            if (isBackVisible)
              const SpacerWidget(
                direction: Axis.horizontal,
                spacing: WidgetSpacing.small,
              ),
            TextWidget(
              title,
              color: colors.onBackground,
              style: TextWidgetStyle.headlineMedium,
            ),
            Expanded(
              child: WrapWidget(
                alignment: WrapAlignment.end,
                children: actions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
