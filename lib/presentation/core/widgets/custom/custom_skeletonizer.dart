import 'package:flutter/material.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomSkeletonizer extends StatelessWidget {
  const CustomSkeletonizer({
    super.key,
    required this.child,
    this.enabled = false,
    this.ignoreContainers = false,
  });

  final Widget child;
  final bool enabled;
  final bool ignoreContainers;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: child,
      enabled: enabled,
      ignoreContainers: ignoreContainers,
      effect: const ShimmerEffect(
        baseColor: BaseColors.lilacGrey,
        highlightColor: BaseColors.lightLilac,
      ),
    );
  }
}
