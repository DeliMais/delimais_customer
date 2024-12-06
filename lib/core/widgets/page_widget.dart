import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget with ThemeMixin {
  const PageWidget({
    required this.body,
    this.isLoading = false,
    this.resizeToAvoidBottomInset = false,
    this.header,
    this.headerSize,
    this.fab,
    this.footer,
    super.key,
  });

  final Widget body;
  final bool isLoading;
  final bool resizeToAvoidBottomInset;
  final Widget? header;
  final Size? headerSize;
  final Widget? fab;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      floatingActionButton: !isLoading ? fab : null,
      bottomNavigationBar: !isLoading ? footer : null,
      appBar: header != null
          ? PreferredSize(
              preferredSize: metrics.appBar,
              child: header!,
            )
          : null,
      body: Center(
        child: isLoading ? const LoadingWidget() : body,
      ),
    );
  }
}
