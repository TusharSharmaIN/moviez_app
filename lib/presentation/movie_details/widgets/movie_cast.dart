part of '../movie_details_page.dart';

class MovieCast extends StatelessWidget {
  const MovieCast({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      buildWhen: (previous, current) => previous.cast != current.cast,
      builder: (context, state) {
        final cast = state.cast.take(10).toList();
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
                itemCount: cast.length,
                itemBuilder: (context, index) {
                  return _CastTile(cast: cast[index]);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _CastTile extends StatelessWidget {
  const _CastTile({required this.cast});
  final Cast cast;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CustomImageView(
              height: 80,
              width: 80,
              fit: BoxFit.cover,
              icon: PhosphorIconsRegular.user,
              imageUrl: cast.profileImageUrl,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            cast.name.getValue(),
            style: BaseTextStyles.mulishSmallSemiBold.copyWith(
              color: BaseColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
