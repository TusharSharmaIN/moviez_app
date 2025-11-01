part of '../home_page.dart';

class TrendingMovies extends StatelessWidget {
  const TrendingMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.moviesList != current.moviesList,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Trending',
              style: BaseTextStyles.merriExtraLargeBold.copyWith(
                color: BaseColors.primaryBlack,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // itemCount: state.moviesList.length,
                itemCount: 6,
                itemBuilder: (context, index) {
                  // final movies = state.moviesList[index];
                  return _TrendingTile(
                    // brand: brand,
                    // isSelectedAndCurrentBranchSame: state.selectedBrand == brand,
                  );
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
  const _TrendingTile();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            height: 220,
            width: 120,
            fit: BoxFit.cover,
            imageUrl:
                'https://image.tmdb.org/t/p/w500/5Gr4amaB1xxeYAEMOdrVutaWwgz.jpg',
          ),
          const SizedBox(height: 8),
          Text(
            'The Rats: A Witcher Tales',
            style: BaseTextStyles.mulishSmallSemiBold.copyWith(
              color: BaseColors.black,
            ),
          ),
          const SizedBox(height: 8),
          _Ratings(),
        ],
      ),
    );
  }
}

class _Ratings extends StatelessWidget {
  const _Ratings();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(PhosphorIconsFill.star, size: 12, color: BaseColors.yellow),
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
