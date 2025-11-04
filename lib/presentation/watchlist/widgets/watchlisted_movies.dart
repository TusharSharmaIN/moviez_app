part of '../watchlist_page.dart';

class WatchlistedMovies extends StatelessWidget {
  const WatchlistedMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.watchlistedMovies != current.watchlistedMovies,
      builder: (context, state) {
        final watchlistedMovies = state.watchlistedMovies;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SectionHeading(
              title: 'Watchlist',
              icon: PhosphorIconsRegular.queue,
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: watchlistedMovies.length,
                itemBuilder: (context, index) {
                  return _WatchlistTile(movie: watchlistedMovies[index]);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _WatchlistTile extends StatelessWidget {
  const _WatchlistTile({required this.movie});
  final WatchlistMovie movie;

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
                height: 120,
                width: 80,
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
