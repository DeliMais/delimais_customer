part of '../checkout_page.dart';

class _DeliveryFormWidget extends GetView<CheckoutPageController>
    with ThemeMixin {
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
          TextFieldWidget(
            icon: SolarLinearIcons.streets,
            labelText: 'Rua',
            hintText: 'Digite o nome da rua',
            type: TextInputType.streetAddress,
            controller: controller.addressStreetFieldController,
          ),
          const SpacerWidget(spacing: WidgetSpacing.small),
          TextFieldWidget(
            icon: SolarLinearIcons.city,
            labelText: 'Bairro',
            hintText: 'Digite o nome do bairro',
            controller: controller.addressDistrictFieldController,
          ),
          const SpacerWidget(spacing: WidgetSpacing.small),
          TextFieldWidget(
            icon: SolarLinearIcons.home,
            labelText: 'Número',
            hintText: 'Digite o número da residência',
            type: TextInputType.number,
            controller: controller.addressNumberFieldController,
          ),
          const SpacerWidget(spacing: WidgetSpacing.small),
          TextFieldWidget(
            icon: SolarLinearIcons.text,
            labelText: 'Ponto de referência',
            hintText: 'Digite um ponto de referência',
            action: TextInputAction.go,
            onFieldSubmitted: () async => controller.save(),
            controller: controller.addressReferenceFieldController,
          ),
          const SpacerWidget(spacing: WidgetSpacing.small),
          TextFieldWidget(
            icon: SolarLinearIcons.text,
            labelText: 'Complemento (opcional)',
            hintText: 'Digite um complemento (opcional)',
            action: TextInputAction.go,
            onFieldSubmitted: () async => controller.save(),
            controller: controller.addressComplementFieldController,
          ),
        ],
      ),
    );
  }
}
