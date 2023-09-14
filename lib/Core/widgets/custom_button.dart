import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    this.onPressed,
  });
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return TextButton(

      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ??
              BorderRadius.circular(
                12,
              ),
        ),
      ),
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(
          color: textColor,
          fontWeight: FontWeight.w900,
          fontSize: fontSize,
        ),
      ),
    );
  }
}