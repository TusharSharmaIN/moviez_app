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
                  return ColumnMovieTile(movie: movies[index]);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}