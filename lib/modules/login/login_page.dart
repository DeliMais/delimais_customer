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
import 'package:delimais_customer/modules/login/login_page_controller.dart';
import 'package:delimais_customer/modules/login/modals/reset_password_modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

class LoginPage extends GetView<LoginPageController> with ThemeMixin {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);
    final media = MediaQuery.of(context).size;

    final headerHeight = media.height / 3.4;

    return PageWidget(
      footer: const _BottomWidget(),
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
      title: 'Login',
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

class _FormWidget extends GetView<LoginPageController>
    with ThemeMixin, DialogMixin {
  const _FormWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, _) = getTheme(context);

    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TextFieldWidget(
            isAutocorrect: false,
            icon: SolarLinearIcons.letter,
            labelText: 'E-mail',
            hintText: 'Digite seu e-mail',
            type: TextInputType.emailAddress,
          ),
          const SpacerWidget(),
          TextFieldWidget(
            isObscure: true,
            isAutocorrect: false,
            icon: SolarLinearIcons.lock,
            labelText: 'Senha',
            hintText: 'Digite sua senha',
            type: TextInputType.visiblePassword,
            action: TextInputAction.go,
            onFieldSubmitted: controller.login,
          ),
          const SpacerWidget(spacing: WidgetSpacing.small),
          Align(
            alignment: Alignment.centerRight,
            child: TextButtonWidget(
              text: 'Esqueci a senha',
              color: colors.onBackgroundAlt,
              onPressed: () async => openModal(
                context,
                name: 'reset_password',
                child: ResetPasswordModal(
                  onFinishedPressed: () => Get.back<void>(),
                ),
              ),
            ),
          ),
          const SpacerWidget(spacing: WidgetSpacing.large),
          ButtonWidget(
            icon: SolarLinearIcons.login2,
            text: 'Entrar',
            onPressed: controller.login,
          ),
        ],
      ),
    );
  }
}

class _SocialButtons extends GetView<LoginPageController> {
  const _SocialButtons();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonWidget(
          icon: Ionicons.logo_google,
          text: 'Fazer login com Google',
          bgColor: Colors.white,
          fgColor: Colors.black,
          onPressed: controller.login,
        ),
        const SpacerWidget(),
        ButtonWidget(
          icon: Ionicons.logo_apple,
          text: 'Fazer login com Apple',
          bgColor: Colors.black,
          fgColor: Colors.white,
          onPressed: controller.login,
        ),
        const SpacerWidget(),
        ButtonWidget(
          icon: Ionicons.logo_facebook,
          text: 'Fazer login com Facebook',
          bgColor: const Color(0xFF1877F2),
          fgColor: Colors.white,
          onPressed: controller.login,
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
            'Ainda não tem uma conta?',
            color: colors.onBackgroundAlt,
          ),
          TextButtonWidget(
            text: 'Criar agora',
            onPressed: () async => Get.toNamed<void>(AppRoutes.register),
          ),
        ],
      ),
    );
  }
}
