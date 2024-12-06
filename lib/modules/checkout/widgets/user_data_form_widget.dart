part of '../checkout_page.dart';

class _UserDataFormWidget extends GetView<CheckoutPageController>
    with ThemeMixin {
  const _UserDataFormWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, _) = getTheme(context);

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            'Dados do usuário',
            color: colors.onBackgroundAlt,
          ),
          const SpacerWidget(),
          TextFieldWidget(
            icon: SolarLinearIcons.user,
            labelText: 'Nome e sobrenome',
            hintText: 'Digite seu nome e sobrenome',
            type: TextInputType.name,
            controller: controller.userNameFieldController,
          ),
          const SpacerWidget(spacing: WidgetSpacing.small),
          TextFieldWidget(
            icon: SolarLinearIcons.phone,
            labelText: 'Celular',
            hintText: '(00) 0 0000-0000',
            type: TextInputType.phone,
            controller: controller.userPhoneFieldController,
          ),
          const SpacerWidget(spacing: WidgetSpacing.small),
          TextFieldWidget(
            icon: SolarLinearIcons.userId,
            labelText: 'CPF (opcional)',
            hintText: 'Digite seu CPF (opcional)',
            controller: controller.userCPFFieldController,
          ),
        ],
      ),
    );
  }
}
