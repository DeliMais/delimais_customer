import 'package:delimais_customer/core/domain/enums/payment_method_enum.dart';
import 'package:delimais_customer/core/mixins/monetary_mixin.dart';
import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/app_bar_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/button_widget.dart';
import 'package:delimais_customer/core/widgets/card_widget.dart';
import 'package:delimais_customer/core/widgets/icon_widget.dart';
import 'package:delimais_customer/core/widgets/image_widget.dart';
import 'package:delimais_customer/core/widgets/option_widget.dart';
import 'package:delimais_customer/core/widgets/page_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:delimais_customer/modules/payment/payment_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

part 'widgets/payment_method_picker_widget.dart';
part 'widgets/payment_pix_widget.dart';

class PaymentPage extends GetView<PaymentPageController> {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PageWidget(
        isLoading: controller.isLoading,
        header: const AppBarWidget(title: 'Pagamento', isBackVisible: true),
        body: const _BodyWidget(),
        footer: const _FooterWidget(),
      ),
    );
  }
}

class _BodyWidget extends GetView<PaymentPageController> with ThemeMixin {
  const _BodyWidget();

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return Obx(() {
      final isPix = controller.method == PaymentMethodEnum.pix;
      return ListView(
        padding: EdgeInsets.all(metrics.medium),
        children: [
          const _PaymentMethodPickerWidget(),
          if (isPix) const SpacerWidget(spacing: WidgetSpacing.large),
          if (isPix) const _PaymentPixWidget(),
        ],
      );
    });
  }
}

class _FooterWidget extends GetView<PaymentPageController>
    with ThemeMixin, MonetaryMixin {
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
            Obx(
              () => TextWidget(
                'Total: ${getPrice(controller.order!.price)}',
                style: TextWidgetStyle.headlineSmall,
              ),
            ),
            const SpacerWidget(),
            ButtonWidget(
              text: 'Finalizar pagamento',
              icon: SolarLinearIcons.checkCircle,
              onPressed: () async => controller.save(),
            ),
          ],
        ),
      ),
    );
  }
}
