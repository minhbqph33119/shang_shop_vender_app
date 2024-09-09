import 'package:flutter/material.dart';

class DialogUtils {
  static void showCustomDialog({
    required BuildContext context,
    required String title,
    required String content,
    String? confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            if (cancelText != null)
              TextButton(
                onPressed: onCancel ?? () => Navigator.of(context).pop(),
                child: Text(cancelText),
              ),
            TextButton(
              onPressed: onConfirm ?? () => Navigator.of(context).pop(),
              child: Text(confirmText ?? 'OK'),
            ),
          ],
        );
      },
    );
  }
}
