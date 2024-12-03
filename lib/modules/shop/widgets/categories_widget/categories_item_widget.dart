part of '../../shop_page.dart';

class _CategoriesItemWidget extends StatelessWidget with ThemeMixin {
  const _CategoriesItemWidget({
    required this.text,
    required this.isActive,
    required this.onPressed,
  });

  final String text;
  final bool isActive;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    var fgColor = colors.onSurface;
    var bgColor = Colors.transparent;
    if (isActive) {
      bgColor = colors.primary;
      fgColor = colors.onPrimary;
    }

    return TouchableWidget(
      onPressed: onPressed,
      child: ContainerWidget(
        padding: EdgeInsets.all(metrics.small),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.all(metrics.radius / 1.6),
        ),
        child: TextWidget(text, color: fgColor),
      ),
    );
  }
}
