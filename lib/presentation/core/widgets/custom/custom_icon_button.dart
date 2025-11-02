import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.padding = EdgeInsets.zero,
  });
  final Widget icon;
  final VoidCallback? onPressed;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      padding: padding,
      constraints: const BoxConstraints(),
      visualDensity: VisualDensity.compact,
    );
  }
}
