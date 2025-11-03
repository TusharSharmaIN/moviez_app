abstract class ApiConstants {
  //  home api
  static const String trending = 'trending/movie/week';
  static const String nowPlaying = 'movie/now_playing';
  static const String popular = 'movie/popular';

  //  movie details api
  static const String movieDetails = 'movie/';
  static String movieVideos(int movieId) => 'movie/$movieId/videos';
}
