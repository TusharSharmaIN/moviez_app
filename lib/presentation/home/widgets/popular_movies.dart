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
            Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                movies.length,
                (index) => RowMovieTile(movie: movies[index]),
              ),
            ),
          ],
        );
      },
    );
  }
}
