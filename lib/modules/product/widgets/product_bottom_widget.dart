part of '../product_page.dart';

class _ProductBottomWidget extends StatelessWidget with ThemeMixin {
  const _ProductBottomWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return ContainerWidget(
      color: colors.background,
      padding: EdgeInsets.all(metrics.medium),
      child: SafeAreaWidget(
        bottom: true,
        child: Row(
          children: [
            Row(
              children: [
                IconButtonWidget(
                  icon: SolarLinearIcons.minus,
                  onPressed: () => {},
                ),
                const SpacerWidget(direction: Axis.horizontal),
                const TextWidget('1'),
                const SpacerWidget(direction: Axis.horizontal),
                IconButtonWidget(
                  icon: SolarLinearIcons.add,
                  onPressed: () => {},
                ),
              ],
            ),
            const SpacerWidget(
              direction: Axis.horizontal,
              spacing: WidgetSpacing.large,
            ),
            Flexible(
              child: ButtonWidget(
                icon: SolarLinearIcons.addCircle,
                text: 'Adicionar',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
