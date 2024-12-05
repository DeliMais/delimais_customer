part of '../checkout_page.dart';

class _UserDataFormWidget extends StatelessWidget with ThemeMixin {
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
          const TextFieldWidget(
            icon: SolarLinearIcons.user,
            labelText: 'Nome e sobrenome',
            hintText: 'Digite seu nome e sobrenome',
            type: TextInputType.name,
          ),
          const SpacerWidget(spacing: WidgetSpacing.small),
          const TextFieldWidget(
            icon: SolarLinearIcons.phone,
            labelText: 'Celular',
            hintText: '(00) 0 0000-0000',
            type: TextInputType.phone,
          ),
          const SpacerWidget(spacing: WidgetSpacing.small),
          const TextFieldWidget(
            icon: SolarLinearIcons.userId,
            labelText: 'CPF (opcional)',
            hintText: 'Digite seu CPF (opcional)',
          ),
        ],
      ),
    );
  }
}
