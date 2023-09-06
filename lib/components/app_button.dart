import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Red button',
  type: AppButton,
)
Widget basicButtonUseCase(BuildContext context) {
  return AppButton(
    title: context.knobs.string(
      label: 'Title',
      initialValue: 'Basic',
    ),
    onPressed: context.knobs.boolean(
      label: 'Enable',
      initialValue: true,
    )
        ? () {}
        : null,
    backgroundColor: context.knobs.color(
      label: 'BackgroundColor',
      initialValue: Colors.red,
    ),
  );
}

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required String title,
    VoidCallback? onPressed,
    Color? backgroundColor,
  })  : _title = title,
        _onPressed = onPressed,
        _backgroundColor = backgroundColor;

  final String _title;
  final VoidCallback? _onPressed;
  final Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: _backgroundColor),
      onPressed: _onPressed,
      child: Text(_title),
    );
  }
}
