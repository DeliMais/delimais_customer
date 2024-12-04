import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/button_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/icon_button_widget.dart';
import 'package:delimais_customer/core/widgets/card_widget.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/fields/text_field_widget.dart';
import 'package:delimais_customer/core/widgets/image_widget.dart';
import 'package:delimais_customer/core/widgets/page_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/sliver_app_bar_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

part 'widgets/product_addon/product_addon_header_widget.dart';
part 'widgets/product_addon/product_addon_item_widget.dart';
part 'widgets/product_bottom_widget.dart';

class ProductPage extends StatelessWidget with ThemeMixin {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return PageWidget(
      resizeToAvoidBottomInset: true,
      navBar: const _ProductBottomWidget(),
      body: CustomScrollView(
        slivers: [
          const SliverAppBarWidget(
            expandedHeight: 300,
            collapsedHeight: 20,
            title: 'Marmita Grande',
            background: ImageWidget(provider: AssetImage('assets/logo.png')),
          ),
          SliverPadding(
            padding: EdgeInsets.all(metrics.medium),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(
                    'Marmita Grande',
                    style: TextWidgetStyle.headlineMedium,
                  ),
                  TextWidget(
                    // ignore: lines_longer_than_80_chars
                    'Descrição do produto descrição do produto descrição do produto descrição do produto descrição do produto',
                    maxLines: 4,
                    color: colors.onBackgroundAlt,
                  ),
                  const SpacerWidget(),
                  const TextWidget(
                    r'R$100,00',
                    style: TextWidgetStyle.titleMedium,
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SpacerWidget(
              spacing: WidgetSpacing.large,
            ),
          ),
          const _ProductAddonHeaderWidget(title: 'Adicionais', min: 0, max: 2),
          const SliverToBoxAdapter(child: SpacerWidget()),
          SliverList.separated(
            itemCount: 10,
            separatorBuilder: (_, __) => const SpacerWidget(
              spacing: WidgetSpacing.small,
            ),
            itemBuilder: (_, __) => const _ProductAddonItemWidget(),
          ),
          const SliverToBoxAdapter(
            child: SpacerWidget(
              spacing: WidgetSpacing.large,
            ),
          ),
          const _ProductAddonHeaderWidget(title: 'Adicionais', min: 0, max: 2),
          const SliverToBoxAdapter(child: SpacerWidget()),
          SliverList.separated(
            itemCount: 10,
            separatorBuilder: (_, __) => const SpacerWidget(
              spacing: WidgetSpacing.small,
            ),
            itemBuilder: (_, __) => const _ProductAddonItemWidget(),
          ),
          const SliverToBoxAdapter(
            child: SpacerWidget(
              spacing: WidgetSpacing.large,
            ),
          ),
          const _ProductAddonHeaderWidget(title: 'Adicionais', min: 0, max: 2),
          const SliverToBoxAdapter(child: SpacerWidget()),
          SliverList.separated(
            itemCount: 10,
            separatorBuilder: (_, __) => const SpacerWidget(
              spacing: WidgetSpacing.small,
            ),
            itemBuilder: (_, __) => const _ProductAddonItemWidget(),
          ),
          const SliverToBoxAdapter(
            child: SpacerWidget(
              spacing: WidgetSpacing.large,
            ),
          ),
          const _ProductAddonHeaderWidget(title: 'Adicionais', min: 0, max: 2),
          const SliverToBoxAdapter(child: SpacerWidget()),
          SliverList.separated(
            itemCount: 10,
            separatorBuilder: (_, __) => const SpacerWidget(
              spacing: WidgetSpacing.small,
            ),
            itemBuilder: (_, __) => const _ProductAddonItemWidget(),
          ),
          const SliverToBoxAdapter(
            child: SpacerWidget(
              spacing: WidgetSpacing.large,
            ),
          ),
          const _ProductAddonHeaderWidget(title: 'Adicionais', min: 0, max: 2),
          const SliverToBoxAdapter(child: SpacerWidget()),
          SliverList.separated(
            itemCount: 10,
            separatorBuilder: (_, __) => const SpacerWidget(
              spacing: WidgetSpacing.small,
            ),
            itemBuilder: (_, __) => const _ProductAddonItemWidget(),
          ),
          const SliverToBoxAdapter(
            child: SpacerWidget(
              spacing: WidgetSpacing.large,
            ),
          ),
          const SliverToBoxAdapter(child: _NotesWidget()),
        ],
      ),
    );
  }
}

class _NotesWidget extends StatelessWidget with ThemeMixin {
  const _NotesWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: metrics.medium),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            'Possui alguma observação?',
            style: TextWidgetStyle.titleMedium,
          ),
          SpacerWidget(),
          TextFieldWidget(
            icon: SolarLinearIcons.chatDots,
            labelText: 'Observação',
            hintText: 'Ex: Tirar a cebola e maionese à parte.',
            type: TextInputType.multiline,
            action: TextInputAction.newline,
            maxLength: 140,
          ),
        ],
      ),
    );
  }
}
