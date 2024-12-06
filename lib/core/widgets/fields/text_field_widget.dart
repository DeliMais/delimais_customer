import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/icon_button_widget.dart';
import 'package:delimais_customer/core/widgets/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    required this.icon,
    required this.labelText,
    required this.hintText,
    this.isObscure = false,
    this.isAutocorrect = true,
    this.type = TextInputType.text,
    this.action = TextInputAction.next,
    this.capitalization = TextCapitalization.none,
    this.maxLength,
    this.controller,
    this.validator,
    this.onFieldSubmitted,
    super.key,
  });

  final IconData icon;
  final String labelText;
  final String hintText;
  final bool isObscure;
  final bool isAutocorrect;
  final TextInputType type;
  final TextInputAction action;
  final TextCapitalization capitalization;
  final int? maxLength;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final VoidCallback? onFieldSubmitted;

  @override
  State<StatefulWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> with ThemeMixin {
  bool _isObscure = false;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.isObscure;
  }

  @override
  void didUpdateWidget(covariant TextFieldWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _isObscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    final theme = getThemeData(context);
    final textTheme = getTextTheme(context);
    final (colors, metrics) = getTheme(context);

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(metrics.radius),
      borderSide: metrics.border.copyWith(color: colors.border),
    );

    final focusedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(metrics.radius),
      borderSide: metrics.border.copyWith(color: colors.primary),
    );

    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(metrics.radius),
      borderSide: metrics.border.copyWith(color: colors.danger),
    );

    var suffixIcon = SolarLinearIcons.eyeClosed;
    if (_isObscure) suffixIcon = SolarLinearIcons.eye;

    return TextFormField(
      controller: widget.controller,
      obscureText: _isObscure,
      autocorrect: widget.isAutocorrect,
      keyboardType: widget.type,
      textInputAction: widget.action,
      style: textTheme.bodyMedium,
      keyboardAppearance: theme.brightness,
      textCapitalization: widget.capitalization,
      validator: widget.validator,
      maxLength: widget.maxLength,
      maxLines: widget.type == TextInputType.multiline ? null : 1,
      onFieldSubmitted: (_) => widget.onFieldSubmitted?.call(),
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        filled: true,
        isDense: true,
        alignLabelWithHint: true,
        fillColor: colors.surface,
        contentPadding: EdgeInsets.symmetric(vertical: metrics.small),
        border: border,
        enabledBorder: border,
        disabledBorder: border,
        errorBorder: errorBorder,
        focusedBorder: focusedBorder,
        focusedErrorBorder: errorBorder,
        prefixIcon: IconWidget(
          icon: widget.icon,
          color: colors.onBackgroundAlt,
        ),
        suffixIcon: _getSuffix(suffixIcon),
        labelStyle: textTheme.bodyMedium?.copyWith(
          color: colors.onBackgroundAlt,
        ),
        hintStyle: textTheme.bodyMedium?.copyWith(
          color: colors.onBackgroundAlt,
        ),
        counterStyle: textTheme.bodyMedium?.copyWith(
          color: colors.onBackgroundAlt,
        ),
        constraints: BoxConstraints(
          minWidth: metrics.field.width,
          minHeight: metrics.field.height,
        ),
      ),
    );
  }

  Widget? _getSuffix(IconData suffixIcon) {
    if (!widget.isObscure) return null;

    return IconButtonWidget(
      icon: suffixIcon,
      onPressed: () => setState(() => _isObscure = !_isObscure),
    );
  }
}

extension TextEditingControllerExt on TextEditingController {
  String? get getText {
    if (text.isNotEmpty) return text;
    return null;
  }
}
