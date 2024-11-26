import 'package:delimais_customer/core/widgets/page_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:delimais_customer/modules/root/root_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootPage extends GetView<RootPageController> {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageWidget(body: Center(child: TextWidget('Root page')));
  }
}
