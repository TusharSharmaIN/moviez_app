part of '../movie_details_page.dart';

class _MovieMetaData extends StatelessWidget {
  const _MovieMetaData();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MetaDataItem(title: 'Duration', data: '2h 30m'),
          MetaDataItem(title: 'Language', data: 'EN, '),
          MetaDataItem(title: 'Rating', data: 'PG-13'),
          // MetaDataItem(title: 'Release Date', data: '12 Dec 2023'),
        ],
      ),
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
