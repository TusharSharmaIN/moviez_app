import 'package:flutter/material.dart';
import 'package:moviez_app/presentation/core/widgets/common/movie_tags.dart';
import 'package:moviez_app/presentation/core/widgets/common/movie_ratings.dart';
import 'package:moviez_app/presentation/core/widgets/custom/custom_app_bar.dart';
import 'package:moviez_app/presentation/core/widgets/custom/custom_icon_button.dart';
import 'package:moviez_app/presentation/core/widgets/custom/custom_image_view.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';
import 'package:moviez_app/presentation/theme/base_text_styles.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

part 'widgets/trailer_thumbnail.dart';
part 'widgets/movie_meta_data.dart';
part 'widgets/movie_cast.dart';

class MovieDetailsPage extends StatefulWidget {
  const MovieDetailsPage({super.key});

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              TrailerThumbnail(height: screenSize.height * 0.4),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: AppBarBackCTA(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      iconColor: BaseColors.white,
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.25),
                  const MovieDetailsContent(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MovieDetailsContent extends StatelessWidget {
  const MovieDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: BaseColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: const SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            MovieTitle(),
            MovieRatings(),
            MovieTags(),
            _MovieMetaData(),
            MovieDescription(),
            MovieCast(),
          ],
        ),
      ),
    );
  }
}

class MovieTitle extends StatelessWidget {
  const MovieTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'The Rats: A Witcher Tales',
          style: BaseTextStyles.merriExtraLargeBold.copyWith(
            color: BaseColors.primaryBlack,
          ),
        ),
        CustomIconButton(
          onPressed: () {},
          icon: const Icon(PhosphorIconsRegular.bookmarkSimple),
        ),
      ],
    );
  }
}

class MovieDescription extends StatelessWidget {
  const MovieDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        Text(
          'Description',
          style: BaseTextStyles.merriLargeBold.copyWith(
            color: BaseColors.primaryBlack,
          ),
        ),
        Text(
          'Description goes here. This is a placeholder text that will be replaced with the actual movie description. The description can be multiple lines long and will scroll if needed.',
          style: BaseTextStyles.mulishMediumRegular.copyWith(
            color: BaseColors.primaryBlack.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}
