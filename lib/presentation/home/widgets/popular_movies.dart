part of '../home_page.dart';

class PopularMovies extends StatelessWidget {
  const PopularMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.popularMovies != current.popularMovies,
      builder: (context, state) {
        final movies = state.popularMovies.results;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SectionHeading(
              title: 'Popular',
              icon: PhosphorIconsFill.sparkle,
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return _PopularTile(movie: movies[index]);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _PopularTile extends StatelessWidget {
  const _PopularTile({required this.movie});
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
                    style: BaseTextStyles.mulishMediumBold.copyWith(
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
