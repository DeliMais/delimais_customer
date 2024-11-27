import 'package:delimais_customer/core/mixins/dialog_mixin.dart';
import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/routes/app_routes.dart';
import 'package:delimais_customer/core/widgets/big_app_bar_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/button_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/text_button_widget.dart';
import 'package:delimais_customer/core/widgets/card_widget.dart';
import 'package:delimais_customer/core/widgets/fields/text_field_widget.dart';
import 'package:delimais_customer/core/widgets/page_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:delimais_customer/core/widgets/wrap_widget.dart';
import 'package:delimais_customer/modules/register/modals/data_conclusion_modal.dart';
import 'package:delimais_customer/modules/register/modals/email_confirmation_modal.dart';
import 'package:delimais_customer/modules/register/modals/phone_confirmation/phone_confirmation_modal.dart';
import 'package:delimais_customer/modules/register/register_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

class RegisterPage extends StatelessWidget with ThemeMixin {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);
    final media = MediaQuery.of(context).size;

    final headerHeight = media.height / 3.4;

    return PageWidget(
      navBar: const _BottomWidget(),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: headerHeight,
            child: const _HeaderWidget(),
          ),
          Positioned.fill(
            top: headerHeight - metrics.medium,
            child: const _ChildWidget(),
          ),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return const BigAppBarWidget(
      title: 'Registrar',
      isBackVisible: true,
      image: AssetImage('assets/delivery.png'),
    );
  }
}

class _ChildWidget extends StatelessWidget with ThemeMixin {
  const _ChildWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, _) = getTheme(context);

    return CardWidget(
      color: colors.background,
      child: Column(
        children: [
          const _FormWidget(),
          const SpacerWidget(spacing: WidgetSpacing.large),
          TextWidget('-- OU --', color: colors.onBackgroundAlt),
          const SpacerWidget(spacing: WidgetSpacing.large),
          const _SocialButtons(),
        ],
      ),
    );
  }
}

class _FormWidget extends GetView<RegisterPageController>
    with ThemeMixin, DialogMixin {
  const _FormWidget();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TextFieldWidget(
            isAutocorrect: false,
            icon: SolarLinearIcons.letter,
            labelText: 'Nome',
            hintText: 'Digite seu nome completo',
            capitalization: TextCapitalization.words,
            type: TextInputType.name,
          ),
          const SpacerWidget(),
          const TextFieldWidget(
            isAutocorrect: false,
            icon: SolarLinearIcons.letter,
            labelText: 'E-mail',
            hintText: 'Digite seu e-mail',
            type: TextInputType.emailAddress,
          ),
          const SpacerWidget(),
          TextFieldWidget(
            isAutocorrect: false,
            icon: SolarLinearIcons.letter,
            labelText: 'Confirmação de e-mail',
            hintText: 'Digite seu e-mail novamente',
            type: TextInputType.emailAddress,
            action: TextInputAction.go,
            onFieldSubmitted: () async => _openModel(context),
          ),
          const SpacerWidget(),
          ButtonWidget(
            text: 'Continuar',
            direction: TextDirection.rtl,
            icon: SolarLinearIcons.altArrowRight,
            onPressed: () async => _openModel(context),
          ),
        ],
      ),
    );
  }

  Future<void> _openModel(BuildContext context) async {
    await openModal(
      context,
      isDismissible: false,
      name: 'email_confirmation',
      child: EmailConfirmationModal(
        onNextPressed: () {
          Get.back<void>();
          openModal(
            context,
            isDismissible: false,
            name: 'complete_data',
            child: PoneConfirmationModal(
              onNextPressed: () {
                Get.back<void>();
                openModal(
                  context,
                  isDismissible: false,
                  name: 'data_confirmation',
                  child: DataConclusionModal(
                    onRegisterPressed: () async {
                      Get.back<void>();
                      await Get.offAllNamed<void>(AppRoutes.root);
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _SocialButtons extends GetView<RegisterPageController> {
  const _SocialButtons();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonWidget(
          icon: Ionicons.logo_google,
          text: 'Registrar-se com Google',
          bgColor: Colors.white,
          fgColor: Colors.black,
          onPressed: controller.register,
        ),
        const SpacerWidget(),
        ButtonWidget(
          icon: Ionicons.logo_apple,
          text: 'Registrar-se com Apple',
          bgColor: Colors.black,
          fgColor: Colors.white,
          onPressed: controller.register,
        ),
        const SpacerWidget(),
        ButtonWidget(
          icon: Ionicons.logo_facebook,
          text: 'Registrar-se com Facebook',
          bgColor: const Color(0xFF1877F2),
          fgColor: Colors.white,
          onPressed: controller.register,
        ),
      ],
    );
  }
}

class _BottomWidget extends StatelessWidget with ThemeMixin {
  const _BottomWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, _) = getTheme(context);

    return SafeAreaWidget(
      bottom: true,
      child: WrapWidget(
        spacing: WidgetSpacing.small,
        alignment: WrapAlignment.center,
        children: [
          TextWidget(
            'Já possui uma conta?',
            color: colors.onBackgroundAlt,
          ),
          TextButtonWidget(
            text: 'Entre agora',
            onPressed: () async => Get.offAllNamed<void>(AppRoutes.login),
          ),
        ],
      ),
    );
  }
}
