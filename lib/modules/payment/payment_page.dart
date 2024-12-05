import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/routes/app_routes.dart';
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
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

part 'widgets/payment_method_picker_widget.dart';
part 'widgets/payment_pix_widget.dart';

class PaymentPage extends StatelessWidget with ThemeMixin {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return PageWidget(
      header: const AppBarWidget(title: 'Pagamento', isBackVisible: true),
      footer: CardWidget(
        padding: EdgeInsets.all(metrics.medium),
        child: SafeAreaWidget(
          bottom: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextWidget(
                r'Total: R$110,00',
                style: TextWidgetStyle.headlineSmall,
              ),
              const SpacerWidget(),
              ButtonWidget(
                text: 'Finalizar pagamento',
                icon: SolarLinearIcons.checkCircle,
                onPressed: () async => Get.offAllNamed(AppRoutes.shop),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(metrics.medium),
        children: const [
          _PaymentMethodPickerWidget(),
          SpacerWidget(spacing: WidgetSpacing.large),
          _PaymentPixWidget(),
        ],
      ),
    );
  }
}
