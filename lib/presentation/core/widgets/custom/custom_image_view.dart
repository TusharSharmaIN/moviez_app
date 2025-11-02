import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomImageView extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final BoxFit fit;
  final BorderRadius borderRadius;

  const CustomImageView({
    super.key,
    required this.imageUrl,
    this.height = 40.0,
    this.width = 40.0,
    this.fit = BoxFit.cover,
    this.borderRadius = BorderRadius.zero,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: height,
        width: width,
        fit: fit,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator(strokeWidth: 1.5)),
        // errorWidget:
        //     (context, url, error) => Center(
        //       child: Image.asset(
        //         Assets.appLogo,
        //         colorBlendMode: BlendMode.srcIn,
        //         color: BaseColors.borderGrey3,
        //       ),
        //     ),
      ),
    );
  }
}
