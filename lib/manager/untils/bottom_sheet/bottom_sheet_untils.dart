import 'package:flutter/material.dart';

class BottomSheetUtils {
  static void showCustomBottomSheet({
    required BuildContext context,
    required Widget content,
    bool isDismissible = true,
    bool enableDrag = true,
  }) {
    showModalBottomSheet(
      context: context,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      builder: (context) => content,
    );
  }
}
