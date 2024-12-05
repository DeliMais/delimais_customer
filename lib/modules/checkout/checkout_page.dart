import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/routes/app_routes.dart';
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
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

part 'widgets/user_data_form_widget.dart';
part 'widgets/delivery_picker_widget.dart';
part 'widgets/delivery_form_widget.dart';

class CheckoutPage extends StatelessWidget with ThemeMixin {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return PageWidget(
      resizeToAvoidBottomInset: true,
      header: const AppBarWidget(
        title: 'Finalização',
        isBackVisible: true,
      ),
      footer: CardWidget(
        padding: EdgeInsets.all(metrics.medium),
        child: SafeAreaWidget(
          bottom: true,
          child: Column(
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
                    r'Subtotal: R$100,00',
                    color: colors.onBackgroundAlt,
                  ),
                ],
              ),
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
                    r'Entrega: R$10,00',
                    color: colors.onBackgroundAlt,
                  ),
                ],
              ),
              const SpacerWidget(spacing: WidgetSpacing.small),
              const TextWidget(
                r'Total: R$110,00',
                style: TextWidgetStyle.headlineSmall,
              ),
              const SpacerWidget(),
              ButtonWidget(
                text: 'Finalizar compra',
                icon: SolarLinearIcons.checkCircle,
                onPressed: () async => Get.toNamed(AppRoutes.payment),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(metrics.medium),
        children: const [
          _UserDataFormWidget(),
          SpacerWidget(spacing: WidgetSpacing.large),
          _DeliveryPickerWidget(),
          SpacerWidget(spacing: WidgetSpacing.large),
          _DeliveryFormWidget(),
        ],
      ),
    );
  }
}
