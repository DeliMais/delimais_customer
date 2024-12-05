part of '../checkout_page.dart';

class _DeliveryFormWidget extends StatelessWidget with ThemeMixin {
  const _DeliveryFormWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, _) = getTheme(context);

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            'Dados da entrega',
            color: colors.onBackgroundAlt,
          ),
          const SpacerWidget(),
          const TextFieldWidget(
            icon: SolarLinearIcons.streets,
            labelText: 'Rua',
            hintText: 'Digite o nome da rua',
            type: TextInputType.streetAddress,
          ),
          const SpacerWidget(spacing: WidgetSpacing.small),
          const TextFieldWidget(
            icon: SolarLinearIcons.city,
            labelText: 'Bairro',
            hintText: 'Digite o nome do bairro',
          ),
          const SpacerWidget(spacing: WidgetSpacing.small),
          const TextFieldWidget(
            icon: SolarLinearIcons.home,
            labelText: 'Número',
            hintText: 'Digite o número da residência',
            type: TextInputType.number,
          ),
          const SpacerWidget(spacing: WidgetSpacing.small),
          const TextFieldWidget(
            icon: SolarLinearIcons.text,
            labelText: 'Ponto de referência',
            hintText: 'Digite um ponto de referência',
            action: TextInputAction.go,
          ),
          const SpacerWidget(spacing: WidgetSpacing.small),
          const TextFieldWidget(
            icon: SolarLinearIcons.text,
            labelText: 'Complemento (opcional)',
            hintText: 'Digite um complemento (opcional)',
            action: TextInputAction.go,
          ),
        ],
      ),
    );
  }
}
