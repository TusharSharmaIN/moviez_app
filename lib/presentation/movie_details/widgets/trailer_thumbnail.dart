part of '../movie_details_page.dart';

class TrailerThumbnail extends StatelessWidget {
  const TrailerThumbnail({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final youtubeUrl = 'https://www.youtube.com/watch?v=O-b2VfmmbyA';
        final url = Uri.parse(youtubeUrl);
        if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
          throw 'Could not launch $url';
        }
      },
      child: SizedBox(
        height: height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CustomImageView(
              height: height,
              fit: BoxFit.cover,
              imageUrl:
                  'https://image.tmdb.org/t/p/w500/8GyOBWEfZTCqyW9pgvSPKi3KvsT.jpg',
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
    );
  }
}
