part of '../home_page.dart';

class PopularMovies extends StatelessWidget {
  const PopularMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Popular',
          style: BaseTextStyles.merriExtraLargeBold.copyWith(
            color: BaseColors.primaryBlack,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            // itemCount: state.moviesList.length,
            itemCount: 6,
            itemBuilder: (context, index) {
              // final movies = state.moviesList[index];
              return _PopularTile(
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

class _PopularTile extends StatelessWidget {
  const _PopularTile();

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
              height: 120,
              width: 80,
              fit: BoxFit.cover,
              imageUrl:
                  'https://image.tmdb.org/t/p/w500/rx9xTly73NssFHPg9gKrX9tJdDI.jpg',
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The Rats: A Witcher Tales',
                style: BaseTextStyles.mulishMediumBold.copyWith(
                  color: BaseColors.black,
                ),
              ),
              const SizedBox(height: 8),
              _Ratings(),
              const SizedBox(height: 8),
              const _MovieTags(),
              const SizedBox(height: 8),
              _Duration(),
            ],
          ),
        ],
      ),
    );
  }
}

class _MovieTags extends StatelessWidget {
  const _MovieTags();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: BaseColors.lightLilac,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Text(
              'Action',
              style: BaseTextStyles.mulishExtraSmallBold.copyWith(
                color: BaseColors.lilac,
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Duration extends StatelessWidget {
  const _Duration();

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
            child: Icon(
              PhosphorIconsRegular.clock,
              size: 12,
              color: BaseColors.black,
            ),
          ),
          const WidgetSpan(child: SizedBox(width: 4)),
          TextSpan(
            text: '2h 30m',
            style: BaseTextStyles.mulishSmallRegular.copyWith(
              color: BaseColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
