import 'package:flutter/material.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';
import 'package:moviez_app/presentation/theme/base_text_styles.dart';

class MovieTags extends StatelessWidget {
  const MovieTags({super.key});

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
