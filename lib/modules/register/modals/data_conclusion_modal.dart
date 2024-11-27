import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/button_widget.dart';
import 'package:delimais_customer/core/widgets/fields/text_field_widget.dart';
import 'package:delimais_customer/core/widgets/modal_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:delimais_customer/core/widgets/upload_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

class DataConclusionModal extends StatelessWidget {
  const DataConclusionModal({
    required this.onRegisterPressed,
    super.key,
  });

  final VoidCallback onRegisterPressed;

  @override
  Widget build(BuildContext context) {
    return ModalWidget(
      title: 'Complete suas informações',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const _ChildWidget(),
          _BottomWidget(onRegisterPressed: onRegisterPressed),
        ],
      ),
    );
  }
}

class _ChildWidget extends StatelessWidget with ThemeMixin {
  const _ChildWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, _) = getTheme(context);

    return Column(
      children: [
        const UploadImageWidget(),
        const SpacerWidget(spacing: WidgetSpacing.small),
        TextWidget(
          'Foto de perfil (opcional)',
          color: colors.onBackgroundAlt,
        ),
        const SpacerWidget(),
        const TextFieldWidget(
          isAutocorrect: false,
          icon: SolarLinearIcons.userId,
          labelText: 'CPF (opcional)',
          hintText: '000.000.000-00',
          type: TextInputType.number,
        ),
        const SpacerWidget(),
        const TextFieldWidget(
          isObscure: true,
          isAutocorrect: false,
          icon: SolarLinearIcons.lock,
          labelText: 'Senha',
          hintText: 'Digite uma senha',
          type: TextInputType.visiblePassword,
        ),
        const SpacerWidget(),
        const TextFieldWidget(
          isObscure: true,
          isAutocorrect: false,
          icon: SolarLinearIcons.lock,
          labelText: 'Confirmação da senha',
          hintText: 'Digite a senha novamente',
          type: TextInputType.visiblePassword,
          action: TextInputAction.go,
        ),
      ],
    );
  }
}

class _BottomWidget extends StatelessWidget {
  const _BottomWidget({required this.onRegisterPressed});

  final VoidCallback onRegisterPressed;

  @override
  Widget build(BuildContext context) {
    return SafeAreaWidget(
      bottom: true,
      showMinimum: false,
      child: ButtonWidget(
        text: 'Registrar',
        icon: SolarLinearIcons.login2,
        onPressed: onRegisterPressed,
      ),
    );
  }
}
