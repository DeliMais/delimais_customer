import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/button_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/text_button_widget.dart';
import 'package:delimais_customer/core/widgets/fields/code_field_widget.dart';
import 'package:delimais_customer/core/widgets/fields/text_field_widget.dart';
import 'package:delimais_customer/core/widgets/modal_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

part 'confirmation_code_widget.dart';

class PoneConfirmationModal extends StatelessWidget {
  const PoneConfirmationModal({
    required this.onNextPressed,
    super.key,
  });

  final VoidCallback onNextPressed;

  @override
  Widget build(BuildContext context) {
    return ModalWidget(
      title: 'Confirmação de celular',
      height: double.infinity,
      child: Column(
        children: [
          const _PhoneWidget(),
          const SpacerWidget(spacing: WidgetSpacing.large),
          const Expanded(child: _ConfirmationCodeWidget()),
          _BottomWidget(onNextPressed: onNextPressed),
        ],
      ),
    );
  }
}

class _PhoneWidget extends StatelessWidget with ThemeMixin {
  const _PhoneWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, _) = getTheme(context);

    return Column(
      children: [
        const Row(
          children: [
            Flexible(
              child: TextFieldWidget(
                isAutocorrect: false,
                icon: SolarLinearIcons.flag,
                labelText: 'Celular',
                hintText: 'Digite seu número de celular',
              ),
            ),
            SpacerWidget(
              direction: Axis.horizontal,
              spacing: WidgetSpacing.small,
            ),
            Flexible(
              flex: 2,
              child: TextFieldWidget(
                isAutocorrect: false,
                icon: SolarLinearIcons.phone,
                labelText: 'Celular',
                hintText: '(00) 0 0000-0000',
              ),
            ),
          ],
        ),
        const SpacerWidget(spacing: WidgetSpacing.small),
        TextWidget(
          'Informações sobre seus pedidos serão enviados para este número.',
          maxLines: 4,
          color: colors.onBackgroundAlt,
        ),
      ],
    );
  }
}

class _BottomWidget extends StatelessWidget {
  const _BottomWidget({required this.onNextPressed});

  final VoidCallback onNextPressed;

  @override
  Widget build(BuildContext context) {
    return SafeAreaWidget(
      bottom: true,
      showMinimum: false,
      child: Column(
        children: [
          TextButtonWidget(
            text: 'Enviar código de confirmação',
            onPressed: () {},
          ),
          const SpacerWidget(),
          ButtonWidget(
            text: 'Próximo',
            direction: TextDirection.rtl,
            icon: SolarLinearIcons.altArrowRight,
            onPressed: onNextPressed,
          ),
        ],
      ),
    );
  }
}
