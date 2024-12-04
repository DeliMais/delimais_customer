part of '../../shop_page.dart';

class _ShopCategoriesWidget extends StatelessWidget {
  const _ShopCategoriesWidget({
    required this.current,
    required this.categories,
    required this.onPressed,
  });

  final int current;
  final List<String> categories;
  final void Function(int current) onPressed;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _CategoriesWidgetDelegate(
        current: current,
        categories: categories,
        onPressed: onPressed,
      ),
    );
  }
}

class _CategoriesWidgetDelegate extends SliverPersistentHeaderDelegate
    with ThemeMixin {
  const _CategoriesWidgetDelegate({
    required this.current,
    required this.categories,
    required this.onPressed,
  });

  final int current;
  final List<String> categories;
  final void Function(int current) onPressed;

  @override
  double get minExtent => 50;

  @override
  double get maxExtent => 50;

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

    return ContainerWidget(
      width: double.infinity,
      color: colors.surface,
      padding: EdgeInsets.symmetric(
        vertical: metrics.small,
        horizontal: metrics.medium,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories.length, (index) {
          final text = categories[index];
          return _ShopCategoriesItemWidget(
            text: text.capitalize!,
            isActive: current == index,
            onPressed: () => onPressed(index),
          );
        }),
      ),
    );
  }
}
