import 'package:flutter/material.dart';

class BottomBarUtils {
  static BottomNavigationBar buildBottomNavigationBar({
    required int currentIndex,
    required List<BottomNavigationBarItem> items,
    required Function(int) onTap,
  }) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: items,
      onTap: onTap,
    );
  }
}
