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
                  return RowMovieTile(movie: watchlistedMovies[index]);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
