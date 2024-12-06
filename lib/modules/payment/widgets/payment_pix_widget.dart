part of '../payment_page.dart';

class _PaymentPixWidget extends StatelessWidget with ThemeMixin {
  const _PaymentPixWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget('PIX', color: colors.onBackgroundAlt),
        const SpacerWidget(),
        ImageWidget(
          width: 200,
          height: 200,
          borderRadius: BorderRadius.all(metrics.radius),
          uri: 'assets/qrcode.png',
        ),
        const SpacerWidget(spacing: WidgetSpacing.small),
        const Row(
          children: [
            TextWidget(
              'Chave: 12.345.678/0001-00',
              style: TextWidgetStyle.titleMedium,
            ),
            SpacerWidget(direction: Axis.horizontal),
            IconWidget(icon: SolarLinearIcons.copy),
          ],
        ),
        const TextWidget('Beneficiário: João Ninguém do Nada'),
        const TextWidget('Instituição: Banco dos Juros'),
        const SpacerWidget(),
        TextWidget(
          // ignore: lines_longer_than_80_chars
          'OBS: Por precaução, envie o comprovante do pagamento para o estabelecimento.',
          maxLines: 4,
          color: colors.onBackgroundAlt,
        ),
      ],
    );
  }
}
