import 'package:delimais_customer/core/domain/enums/order_type_enum.dart';
import 'package:delimais_customer/core/mixins/date_time_mixin.dart';
import 'package:delimais_customer/core/mixins/monetary_mixin.dart';
import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/app_bar_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/button_widget.dart';
import 'package:delimais_customer/core/widgets/card_widget.dart';
import 'package:delimais_customer/core/widgets/fields/text_field_widget.dart';
import 'package:delimais_customer/core/widgets/icon_widget.dart';
import 'package:delimais_customer/core/widgets/option_widget.dart';
import 'package:delimais_customer/core/widgets/page_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:delimais_customer/modules/checkout/checkout_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

part 'widgets/user_data_form_widget.dart';
part 'widgets/delivery_picker_widget.dart';
part 'widgets/delivery_form_widget.dart';

class CheckoutPage extends GetView<CheckoutPageController> {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PageWidget(
        isLoading: controller.isLoading,
        resizeToAvoidBottomInset: true,
        header: const _AppBarWidget(),
        body: const _BodyWidget(),
        footer: const _FooterWidget(),
      ),
    );
  }
}

class _AppBarWidget extends StatelessWidget {
  const _AppBarWidget();

  @override
  Widget build(BuildContext context) {
    return const AppBarWidget(
      title: 'Finalização',
      isBackVisible: true,
    );
  }
}

class _BodyWidget extends GetView<CheckoutPageController> with ThemeMixin {
  const _BodyWidget();

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return Obx(() {
      final isDelivery = controller.orderType == OrderTypeEnum.delivery;
      return ListView(
        padding: EdgeInsets.all(metrics.medium),
        children: [
          const _UserDataFormWidget(),
          const SpacerWidget(spacing: WidgetSpacing.large),
          const _DeliveryPickerWidget(),
          if (isDelivery) const SpacerWidget(spacing: WidgetSpacing.large),
          if (isDelivery) const _DeliveryFormWidget(),
        ],
      );
    });
  }
}

class _FooterWidget extends GetView<CheckoutPageController>
    with ThemeMixin, MonetaryMixin {
  const _FooterWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return CardWidget(
      padding: EdgeInsets.all(metrics.medium),
      child: SafeAreaWidget(
        bottom: true,
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconWidget(
                    icon: SolarLinearIcons.bag,
                    color: colors.onBackgroundAlt,
                  ),
                  const SpacerWidget(
                    direction: Axis.horizontal,
                    spacing: WidgetSpacing.small,
                  ),
                  TextWidget(
                    'Subtotal: ${getPrice(controller.bagPrice)}',
                    color: colors.onBackgroundAlt,
                  ),
                ],
              ),
              if (controller.deliveryTax > 0)
                Row(
                  children: [
                    IconWidget(
                      icon: SolarLinearIcons.scooter,
                      color: colors.onBackgroundAlt,
                    ),
                    const SpacerWidget(
                      direction: Axis.horizontal,
                      spacing: WidgetSpacing.small,
                    ),
                    TextWidget(
                      'Entrega: ${getPrice(controller.deliveryTax)}',
                      color: colors.onBackgroundAlt,
                    ),
                  ],
                ),
              const SpacerWidget(spacing: WidgetSpacing.small),
              TextWidget(
                'Total: ${getPrice(controller.totalPrice)}',
                style: TextWidgetStyle.headlineSmall,
              ),
              const SpacerWidget(),
              ButtonWidget(
                text: 'Finalizar compra',
                icon: SolarLinearIcons.checkCircle,
                onPressed: () async => controller.save(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
