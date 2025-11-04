import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviez_app/bloc/movie_details/movie_details_bloc.dart';
import 'package:moviez_app/domain/movie_details/entities/cast.dart';
import 'package:moviez_app/domain/watchlist/entities/watchlist_movie.dart';
import 'package:moviez_app/presentation/core/widgets/common/movie_tags.dart';
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
  const MovieDetailsPage({super.key, required this.movieId});
  final String movieId;

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  void initState() {
    super.initState();
    final movieDetailsBloc = context.read<MovieDetailsBloc>();
    final movieId =
        int.tryParse(widget.movieId) ?? movieDetailsBloc.state.movieId;
    movieDetailsBloc.add(MovieDetailsEvent.setMovieId(movieId: movieId));
    movieDetailsBloc.add(const MovieDetailsEvent.loadMovieDetails());
    movieDetailsBloc.add(
      MovieDetailsEvent.checkIfMovieIsWatchlisted(movieId: movieId),
    );
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
            TitleAndWatchlistCTA(),
            // MovieRatings(),
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

class TitleAndWatchlistCTA extends StatelessWidget {
  const TitleAndWatchlistCTA({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      buildWhen: (previous, current) =>
          previous.movieDetails != current.movieDetails ||
          previous.isWatchlisted != current.isWatchlisted,
      builder: (context, state) {
        final isWatchlisted = state.isWatchlisted;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                state.movieDetails.title.getValue(),
                style: BaseTextStyles.merriExtraLargeBold.copyWith(
                  color: BaseColors.primaryBlack,
                ),
              ),
            ),
            CustomIconButton(
              onPressed: () {
                isWatchlisted
                    ? context.read<MovieDetailsBloc>().add(
                        MovieDetailsEvent.removeFromWatchlist(
                          movieId: state.movieDetails.id,
                        ),
                      )
                    : context.read<MovieDetailsBloc>().add(
                        MovieDetailsEvent.addToWatchlist(
                          movie: WatchlistMovie(
                            id: state.movieDetails.id,
                            title: state.movieDetails.title,
                            posterPath: state.movieDetails.posterPath,
                            releaseDate: state.movieDetails.releaseDate,
                            backdropPath: state.movieDetails.backdropPath,
                            genreIds: state.movieDetails.genres
                                .map((genre) => genre.id)
                                .toList(),
                            originalLanguage:
                                state.movieDetails.originalLanguage,
                            overview: state.movieDetails.overview,
                          ),
                        ),
                      );
              },
              icon: isWatchlisted
                  ? const Icon(
                      PhosphorIconsFill.bookmarkSimple,
                      color: BaseColors.slateRed,
                    )
                  : const Icon(PhosphorIconsRegular.bookmarkSimple),
            ),
          ],
        );
      },
    );
  }
}

class MovieDescription extends StatelessWidget {
  const MovieDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      buildWhen: (previous, current) =>
          previous.movieDetails != current.movieDetails,
      builder: (context, state) {
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
              state.movieDetails.overview.getValue(),
              style: BaseTextStyles.mulishMediumRegular.copyWith(
                color: BaseColors.primaryBlack.withValues(alpha: 0.7),
              ),
            ),
          ],
        );
      },
    );
  }
}
