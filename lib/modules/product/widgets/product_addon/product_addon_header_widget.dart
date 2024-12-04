part of '../../product_page.dart';

class _ProductAddonHeaderWidget extends StatelessWidget {
  const _ProductAddonHeaderWidget({required this.title, this.min, this.max});

  final String title;
  final int? min;
  final int? max;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _Delegate(title: title, min: min, max: max),
    );
  }
}

class _Delegate extends SliverPersistentHeaderDelegate with ThemeMixin {
  const _Delegate({
    required this.title,
    required this.min,
    required this.max,
  });

  final String title;
  final int? min;
  final int? max;

  @override
  double get minExtent => 58;

  @override
  double get maxExtent => 58;

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

    final opacity = 1.0 - (shrinkOffset / maxExtent).clamp(0.0, 1.0);

    return Visibility(
      visible: opacity != 0,
      child: ContainerWidget(
        width: double.infinity,
        height: maxExtent,
        color: colors.surface,
        padding: EdgeInsets.symmetric(
          vertical: metrics.small,
          horizontal: metrics.medium,
        ),
        child: Opacity(
          opacity: opacity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(title, style: TextWidgetStyle.titleMedium),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (min != null)
                    TextWidget(
                      'Mínimo: $min.',
                      color: colors.onBackgroundAlt,
                    ),
                  const SpacerWidget(
                    direction: Axis.horizontal,
                    spacing: WidgetSpacing.small,
                  ),
                  if (max != null)
                    TextWidget(
                      'Máximo: $max.',
                      color: colors.onBackgroundAlt,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
