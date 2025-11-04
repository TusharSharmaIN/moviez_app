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
            Text(
              'Watchlist',
              style: BaseTextStyles.merriExtraLargeBold.copyWith(
                color: BaseColors.primaryBlack,
              ),
            ),
            const SizedBox(height: 8),
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
    return Container(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text(
                movie.title.getValue(),
                style: BaseTextStyles.mulishMediumBold.copyWith(
                  color: BaseColors.black,
                ),
              ),
              // const MovieTags(),
              // DateAndLanguage(
              //   date: movie.releaseDate.formattedDate,
              //   languageCode: movie.originalLanguage.getValue(),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
