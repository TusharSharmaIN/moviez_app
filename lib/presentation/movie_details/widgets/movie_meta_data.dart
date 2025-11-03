part of '../movie_details_page.dart';

class _MovieMetaData extends StatelessWidget {
  const _MovieMetaData();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      buildWhen: (previous, current) =>
          previous.movieDetails != current.movieDetails,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MetaDataItem(
                title: 'Duration',
                data: state.movieDetails.formattedRuntime,
              ),
              MetaDataItem(
                title: 'Language',
                data: state.movieDetails.originalLanguage
                    .getValue()
                    .toUpperCase(),
              ),
              MetaDataItem(
                title: 'Release On',
                data: state.movieDetails.releaseDate.formattedDate,
              ),
            ],
          ),
        );
      },
    );
  }
}

class MetaDataItem extends StatelessWidget {
  const MetaDataItem({super.key, required this.title, required this.data});
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        Text(
          title,
          style: BaseTextStyles.mulishSmallRegular.copyWith(
            color: BaseColors.textGrey,
          ),
        ),
        Text(
          data,
          style: BaseTextStyles.mulishSmallSemiBold.copyWith(
            color: BaseColors.primaryBlack,
          ),
        ),
      ],
    );
  }
}
