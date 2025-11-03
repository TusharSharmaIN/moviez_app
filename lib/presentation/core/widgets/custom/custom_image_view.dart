import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:moviez_app/presentation/core/widgets/custom/custom_placeholder.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CustomImageView extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final BoxFit fit;
  final BorderRadius borderRadius;
  final IconData icon;

  const CustomImageView({
    super.key,
    required this.imageUrl,
    this.height = 40.0,
    this.width = 40.0,
    this.fit = BoxFit.cover,
    this.borderRadius = BorderRadius.zero,
    this.icon = PhosphorIconsRegular.filmReel,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl.trim().isEmpty) {
      return ClipRRect(
        borderRadius: borderRadius,
        child: CustomPlaceholder(
          height: height,
          width: width,
          fit: fit,
          icon: icon,
        ),
      );
    }

    return ClipRRect(
      borderRadius: borderRadius,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: height,
        width: width,
        fit: fit,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator(strokeWidth: 1.5)),
        errorWidget: (context, url, error) =>
            CustomPlaceholder(height: height, width: width, fit: fit),
      ),
    );
  }
}
