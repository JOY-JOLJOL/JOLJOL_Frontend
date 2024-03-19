import 'package:flutter/material.dart';
import 'package:joljol/common/app_fonts.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {super.key, required this.text, this.icon = const SizedBox()});
  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: icon,
      label: Text(
        text,
        style: AppFonts.text.copyWith(decoration: TextDecoration.underline),
      ),
    );
  }
}
