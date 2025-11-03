import 'package:flutter/material.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';
import 'package:moviez_app/presentation/theme/base_text_styles.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MovieRatings extends StatelessWidget {
  const MovieRatings({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(PhosphorIconsFill.star, size: 12, color: BaseColors.yellow),
        const SizedBox(width: 4),
        Text(
          '9.1/10 IMDB',
          style: BaseTextStyles.mulishSmallRegular.copyWith(
            color: BaseColors.textGrey,
          ),
        ),
      ],
    );
  }
}
