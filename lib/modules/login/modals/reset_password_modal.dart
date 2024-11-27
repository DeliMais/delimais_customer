import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/button_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/text_button_widget.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/icon_widget.dart';
import 'package:delimais_customer/core/widgets/modal_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

class ResetPasswordModal extends StatelessWidget {
  const ResetPasswordModal({
    required this.onFinishedPressed,
    super.key,
  });

  final VoidCallback onFinishedPressed;

  @override
  Widget build(BuildContext context) {
    return ModalWidget(
      title: 'Redefinição de senha',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const _ChildWidget(),
          _BottomWidget(onFinishedPressed: onFinishedPressed),
        ],
      ),
    );
  }
}

class _ChildWidget extends StatelessWidget with ThemeMixin {
  const _ChildWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return Column(
      children: [
        ContainerWidget(
          padding: EdgeInsets.all(metrics.small),
          decoration: BoxDecoration(
            color: colors.primary,
            shape: BoxShape.circle,
          ),
          child: IconWidget(
            icon: SolarLinearIcons.letter,
            size: metrics.icon * 2,
            color: colors.onPrimary,
          ),
        ),
        const SpacerWidget(spacing: WidgetSpacing.large),
        const TextWidget(
          'Enviamos um e-mail de redefinição de senha para:',
          maxLines: 2,
          align: TextAlign.center,
        ),
        const SpacerWidget(),
        const TextWidget(
          'joao.lo.sereia@gmail.com',
          style: TextWidgetStyle.titleMedium,
        ),
        const SpacerWidget(),
        const TextWidget(
          // ignore: lines_longer_than_80_chars
          'Cheque seu e-mail e clique no link de redefinição para mudar sua senha.',
          maxLines: 4,
          align: TextAlign.center,
        ),
      ],
    );
  }
}

class _BottomWidget extends StatelessWidget {
  const _BottomWidget({required this.onFinishedPressed});

  final VoidCallback onFinishedPressed;

  @override
  Widget build(BuildContext context) {
    return SafeAreaWidget(
      bottom: true,
      showMinimum: false,
      child: Column(
        children: [
          TextButtonWidget(
            text: 'Reenviar e-mail de redefinição',
            onPressed: () {},
          ),
          const SpacerWidget(),
          ButtonWidget(
            text: 'Concluído',
            icon: SolarLinearIcons.check,
            onPressed: onFinishedPressed,
          ),
        ],
      ),
    );
  }
}
