import 'dart:typed_data';

import 'package:delimais_customer/core/mixins/dialog_mixin.dart';
import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/touchable_widget.dart';
import 'package:delimais_customer/core/widgets/image_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class UploadImageWidget extends StatefulWidget {
  const UploadImageWidget({
    this.onImageChanged,
    super.key,
  });

  final void Function(Uint8List data)? onImageChanged;

  @override
  State<StatefulWidget> createState() => _UploadImageWidgetState();
}

class _UploadImageWidgetState extends State<UploadImageWidget>
    with ThemeMixin, DialogMixin {
  Uint8List? _bytes;

  Future<void> _openFileManager() async {
    final files = await openFilePicker(fileType: FileType.image);
    final bytes = await files.first.readAsBytes();
    setState(() => _bytes = bytes);
  }

  @override
  Widget build(BuildContext context) {
    return TouchableWidget(
      onPressed: () async => _openFileManager(),
      child: ImageWidget(
        width: 100,
        height: 100,
        borderRadius: BorderRadius.circular(100),
        bytes: _bytes,
      ),
    );
  }
}
