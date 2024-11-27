import 'package:cross_file/cross_file.dart';
import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

mixin DialogMixin on ThemeMixin {
  Future<void> openModal(
    BuildContext context, {
    required String name,
    required Widget child,
    bool isDismissible = true,
  }) async {
    final (_, metrics) = getTheme(context);

    await Get.bottomSheet<void>(
      PopScope(
        canPop: isDismissible,
        child: child,
      ),
      elevation: 0,
      ignoreSafeArea: false,
      useRootNavigator: true,
      enableDrag: isDismissible,
      isDismissible: isDismissible,
      backgroundColor: Colors.transparent,
      exitBottomSheetDuration: metrics.duration,
      enterBottomSheetDuration: metrics.duration,
      settings: RouteSettings(name: '${name}_modal'),
    );
  }

  Future<List<XFile>> openFilePicker({
    bool allowMultiple = false,
    List<String>? allowedExtensions,
    FileType fileType = FileType.any,
    String? initialDirectory,
  }) async {
    final initialDir = await getDownloadsDirectory();
    final result = await FilePicker.platform.pickFiles(
      type: fileType,
      allowMultiple: allowMultiple,
      allowedExtensions: allowedExtensions,
      initialDirectory: initialDirectory ?? initialDir?.path,
    );

    return result?.xFiles ?? [];
  }
}
