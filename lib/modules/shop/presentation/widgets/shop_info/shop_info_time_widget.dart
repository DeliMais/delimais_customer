part of '../../shop_page.dart';

class _ShopInfoTimeWidget extends GetView<ShopPageController> {
  const _ShopInfoTimeWidget();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final hours = controller.shop!.hours;

      final formatter = DateFormat.E();
      final now = DateTime(2024, 12).toLocal();
      final opening = hours.first.opening.toLocal();
      final closing = hours.first.closing.toLocal();

      final firstDay = formatter.format(now.copyWith(day: hours.first.day));
      final lastDay = formatter.format(now.copyWith(day: hours.last.day));

      final firstTime = DateFormat('HH:mm').format(opening);
      final lastTime = DateFormat('HH:mm').format(closing);

      final text = '$firstDay - $lastDay • $firstTime - $lastTime'.capitalize!;

      return _ShopInfoItemWidget(
        icon: SolarLinearIcons.clockCircle,
        text: text.replaceAll('.', ''),
        onPressed: () {},
      );
    });
  }
}
