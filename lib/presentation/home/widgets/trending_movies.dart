part of '../home_page.dart';

class TrendingMovies extends StatelessWidget {
  const TrendingMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.nowShowingMovies != current.nowShowingMovies,
      builder: (context, state) {
        final movies = state.nowShowingMovies.results;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SectionHeading(
              title: 'Trending',
              icon: PhosphorIconsFill.trendUp,
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return _TrendingTile(movie: movies[index]);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _TrendingTile extends StatelessWidget {
  const _TrendingTile({required this.movie});
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
                style: BaseTextStyles.mulishSmallSemiBold.copyWith(
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
