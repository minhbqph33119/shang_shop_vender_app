import 'package:flutter/material.dart';

import '../../../core/constant/app_text_styles.dart';

class ButtonUtils {
  static Widget primaryButton({
    required String text,
    required VoidCallback onPressed,
    Color color = const Color.fromARGB(255, 0, 0, 0),
    Color textColor = Colors.white,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        textStyle: AppTextStyles.body.copyWith(color: textColor),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      child: Text(text),
    );
  }

  static Widget outlineButton({
    required String text,
    required VoidCallback onPressed,
    Color borderColor = const Color.fromARGB(255, 0, 0, 0),
    Color textColor = const Color.fromARGB(255, 0, 0, 0),
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: borderColor),
        textStyle: AppTextStyles.body.copyWith(color: textColor),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      child: Text(text),
    );
  }
}
