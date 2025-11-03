import 'package:flutter/material.dart';

class CustomPlaceholder extends StatelessWidget {
  final double? height;
  final double? width;
  final BoxFit? fit;
  final IconData? icon;

  const CustomPlaceholder({super.key, this.height, this.width, this.fit, this.icon,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Colors.grey[300],
      child: Icon(
        icon,
        color: Colors.grey[600],
        size: (height ?? 40) * 0.5,
      ),
    );
  }
}
