part of '../movie_details_page.dart';

class TrailerThumbnail extends StatelessWidget {
  const TrailerThumbnail({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      buildWhen: (previous, current) =>
          previous.isLoadingMovieDetails != current.isLoadingMovieDetails ||
          previous.movieDetails != current.movieDetails ||
          previous.trailer != current.trailer,
      builder: (context, state) {
        return GestureDetector(
          onTap: () async {
            //*Improvemnt* can open on youtube url on app
            final youtubeUrl = state.trailer.youtubeUrl;
            if (youtubeUrl != null) {
              final url = Uri.parse(youtubeUrl);
              if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
                throw 'Could not launch $url';
              }
            }
          },
          child: CustomSkeletonizer(
            enabled: state.isLoadingMovieDetails,
            child: SizedBox(
              height: height,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CustomImageView(
                    height: height,
                    fit: BoxFit.cover,
                    imageUrl: state.movieDetails.backdropUrl,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 24),
                    child: const Icon(
                      PhosphorIconsFill.playCircle,
                      size: 64,
                      color: BaseColors.white,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          BaseColors.black.withValues(alpha: 0.1),
                          BaseColors.black,
                        ],
                        stops: const [0.5, 1.0],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
