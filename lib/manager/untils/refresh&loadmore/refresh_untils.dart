import 'package:flutter/material.dart';

class RefreshUtils {
  static Widget buildRefresh({
    required Widget child,
    required Future<void> Function() onRefresh,
  }) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: child,
    );
  }

  static Widget buildLoadMore({
    required Widget child,
    required Future<void> Function() onLoadMore,
  }) {
    // Assuming you implement infinite scrolling
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
          onLoadMore();
        }
        return true;
      },
      child: child,
    );
  }
}
