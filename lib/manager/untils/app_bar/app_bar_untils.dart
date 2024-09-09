import 'package:flutter/material.dart';

class AppBarUtils {
  static AppBar buildAppBar({
    required String title,
    List<Widget>? actions,
    bool centerTitle = true,
  }) {
    return AppBar(
      title: Text(title),
      centerTitle: centerTitle,
      actions: actions,
    );
  }
}
