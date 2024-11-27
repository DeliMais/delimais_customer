part of 'phone_confirmation_modal.dart';

class _ConfirmationCodeWidget extends StatelessWidget {
  const _ConfirmationCodeWidget();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          'Digite o código de 6 dígitos que te enviamos por SMS.',
          maxLines: 4,
        ),
        SpacerWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: CodeFieldWidget()),
            SpacerWidget(
              direction: Axis.horizontal,
              spacing: WidgetSpacing.small,
            ),
            Flexible(child: CodeFieldWidget()),
            SpacerWidget(
              direction: Axis.horizontal,
              spacing: WidgetSpacing.small,
            ),
            Flexible(child: CodeFieldWidget()),
            SpacerWidget(
              direction: Axis.horizontal,
              spacing: WidgetSpacing.small,
            ),
            Flexible(child: CodeFieldWidget()),
            SpacerWidget(
              direction: Axis.horizontal,
              spacing: WidgetSpacing.small,
            ),
            Flexible(child: CodeFieldWidget(action: TextInputAction.go)),
            SpacerWidget(
              direction: Axis.horizontal,
              spacing: WidgetSpacing.small,
            ),
            Flexible(child: CodeFieldWidget()),
          ],
        ),
      ],
    );
  }
}
