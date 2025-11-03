part of '../movie_details_page.dart';

class MovieCast extends StatelessWidget {
  const MovieCast({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Text(
          'Cast',
          style: BaseTextStyles.merriExtraLargeBold.copyWith(
            color: BaseColors.primaryBlack,
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              // final movies = state.moviesList[index];
              return const _CastTile(
                // brand: brand,
                // isSelectedAndCurrentBranchSame: state.selectedBrand == brand,
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CastTile extends StatelessWidget {
  const _CastTile();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomImageView(
            height: 80,
            width: 80,
            fit: BoxFit.cover,
            imageUrl:
                'https://image.tmdb.org/t/p/w500/1UXruA5cEqdMACjUMuem8jN1N9G.jpg',
          ),
          const SizedBox(height: 8),
          Text(
            'Christelle Elwin',
            style: BaseTextStyles.mulishSmallSemiBold.copyWith(
              color: BaseColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
