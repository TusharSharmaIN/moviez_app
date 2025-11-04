import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';
import 'package:moviez_app/presentation/core/widgets/custom/custom_image_view.dart';
import 'package:moviez_app/presentation/router/route.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';
import 'package:moviez_app/presentation/theme/base_text_styles.dart';

class RowMovieTile extends StatelessWidget {
  const RowMovieTile({super.key, required this.movie});
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
        margin: const EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CustomImageView(
                height: 160,
                width: 100,
                fit: BoxFit.cover,
                imageUrl: movie.posterUrl,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Text(
                    movie.title.getValue(),
                    style: BaseTextStyles.mulishLargeSemiBold.copyWith(
                      color: BaseColors.black,
                    ),
                  ),
                  DateAndLanguage(
                    date: movie.releaseDate.formattedDate,
                    languageCode: movie.originalLanguage.getValue(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateAndLanguage extends StatelessWidget {
  const DateAndLanguage({
    super.key,
    required this.date,
    required this.languageCode,
  });
  final String date;
  final String languageCode;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: date,
            style: BaseTextStyles.mulishSmallRegular.copyWith(
              color: BaseColors.black,
            ),
          ),
          const WidgetSpan(child: SizedBox(width: 4)),
          TextSpan(
            text: ' • ',
            style: BaseTextStyles.mulishSmallRegular.copyWith(
              color: BaseColors.black,
            ),
          ),
          const WidgetSpan(child: SizedBox(width: 4)),
          TextSpan(
            text: '${languageCode.toUpperCase()}',
            style: BaseTextStyles.mulishSmallRegular.copyWith(
              color: BaseColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
