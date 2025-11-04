import 'package:flutter/material.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';

class CustomRefreshIndicator extends StatelessWidget {
  const CustomRefreshIndicator({
    super.key,
    required this.onRefresh,
    required this.child,
  });
  final Future<void> Function() onRefresh;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      color: BaseColors.lilac,
      backgroundColor: BaseColors.lightLilac,
      child: child,
    );
  }
}
