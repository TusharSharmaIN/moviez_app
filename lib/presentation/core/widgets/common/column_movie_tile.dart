import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';
import 'package:moviez_app/presentation/core/widgets/custom/custom_image_view.dart';
import 'package:moviez_app/presentation/router/route.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';
import 'package:moviez_app/presentation/theme/base_text_styles.dart';

class ColumnMovieTile extends StatelessWidget {
  const ColumnMovieTile({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
          AppRoutes.movieDetails,
          extra: {'movieId': movie.id.toString()},
        );
      },
      child: Container(
        width: 120,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CustomImageView(
                height: 220,
                width: 120,
                fit: BoxFit.cover,
                imageUrl: movie.posterUrl,
              ),
            ),
            Flexible(
              child: Text(
                movie.title.getValue(),
                style: BaseTextStyles.mulishSemiMediumBold.copyWith(
                  color: BaseColors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
