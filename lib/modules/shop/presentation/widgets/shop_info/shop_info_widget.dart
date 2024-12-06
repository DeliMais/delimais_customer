part of '../../shop_page.dart';

class _ShopInfoWidget extends StatelessWidget with ThemeMixin {
  const _ShopInfoWidget();

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return CardWidget(
      height: 250,
      padding: EdgeInsets.all(metrics.small),
      child: const Column(
        children: [
          _ShopInfoHeaderWidget(),
          SpacerWidget(),
          _ShopInfoTimeWidget(),
          _ShopInfoDeliveryWidget(),
          _ShopInfoPaymentWidget(),
        ],
      ),
    );
  }
}

class _ShopInfoItemWidget extends StatelessWidget with ThemeMixin {
  const _ShopInfoItemWidget({
    required this.text,
    required this.icon,
    required this.onPressed,
    this.border,
  });

  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    final borderSide = metrics.border.copyWith(color: colors.border);

    return TouchableWidget(
      onPressed: onPressed,
      child: ContainerWidget(
        width: double.infinity,
        padding: EdgeInsets.all(metrics.small),
        decoration: BoxDecoration(
          border: border ?? Border(bottom: borderSide),
        ),
        child: Row(
          children: [
            ContainerWidget(
              padding: EdgeInsets.all(metrics.small / 2),
              decoration: BoxDecoration(
                color: colors.primary,
                borderRadius: BorderRadius.all(metrics.radius),
              ),
              child: IconWidget(icon: icon, color: colors.onPrimary),
            ),
            const SpacerWidget(
              direction: Axis.horizontal,
              spacing: WidgetSpacing.small,
            ),
            Expanded(child: TextWidget(text)),
            const IconWidget(icon: SolarLinearIcons.altArrowRight),
          ],
        ),
      ),
    );
  }
}
