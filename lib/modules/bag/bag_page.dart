import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/app_bar_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/button_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/icon_button_widget.dart';
import 'package:delimais_customer/core/widgets/card_widget.dart';
import 'package:delimais_customer/core/widgets/icon_widget.dart';
import 'package:delimais_customer/core/widgets/image_widget.dart';
import 'package:delimais_customer/core/widgets/page_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

part 'widgets/bag_product_widget.dart';

class BagPage extends StatelessWidget with ThemeMixin {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return PageWidget(
      header: AppBarWidget(
        title: 'Sacola',
        isBackVisible: true,
        actions: [
          IconButtonWidget(
            text: 'Limpar',
            icon: SolarLinearIcons.clipboardRemove,
            onPressed: () {},
          ),
        ],
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
              Row(
                children: [
                  const TextWidget(
                    r'Total: R$100,00',
                    style: TextWidgetStyle.headlineSmall,
                  ),
                  const SpacerWidget(
                    direction: Axis.horizontal,
                    spacing: WidgetSpacing.small,
                  ),
                  TextWidget(
                    '| 2 itens',
                    color: colors.onBackgroundAlt,
                  ),
                ],
              ),
              const SpacerWidget(),
              ButtonWidget(
                text: 'Finalizar compra',
                icon: SolarLinearIcons.checkCircle,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(metrics.medium),
        itemCount: 3,
        separatorBuilder: (_, __) => const SpacerWidget(),
        itemBuilder: (_, __) => _BagProductWidget(),
      ),
    );
  }
}
