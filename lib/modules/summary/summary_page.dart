import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/routes/app_routes.dart';
import 'package:delimais_customer/core/widgets/app_bar_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/button_widget.dart';
import 'package:delimais_customer/core/widgets/card_widget.dart';
import 'package:delimais_customer/core/widgets/page_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:delimais_customer/modules/summary/summary_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

class SummaryPage extends GetView<SummaryPageController> {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PageWidget(
        isLoading: controller.isLoading,
        header: const AppBarWidget(title: 'Resumo'),
        body: const _BodyWidget(),
        footer: const _FooterWidget(),
      ),
    );
  }
}

class _BodyWidget extends GetView<SummaryPageController> with ThemeMixin {
  const _BodyWidget();

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return Padding(
      padding: EdgeInsets.all(metrics.medium),
      child: CardWidget(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Obx(
              () => TextWidget(
                controller.summary,
                maxLines: null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FooterWidget extends GetView<SummaryPageController> with ThemeMixin {
  const _FooterWidget();

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return CardWidget(
      padding: EdgeInsets.all(metrics.medium),
      child: SafeAreaWidget(
        bottom: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ButtonWidget(
              text: 'Enviar para o WhatsApp',
              icon: Ionicons.logo_whatsapp,
              onPressed: () async => controller.sendMessage(),
            ),
            const SpacerWidget(),
            ButtonWidget(
              text: 'Concluir',
              icon: SolarLinearIcons.checkCircle,
              onPressed: () => Get.offAllNamed<void>(AppRoutes.shop),
            ),
          ],
        ),
      ),
    );
  }
}
