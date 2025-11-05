import 'package:dio/dio.dart';
import 'package:moviez_app/infrastructure/core/http/api_constants.dart';
import 'package:moviez_app/infrastructure/home/dtos/movies_data_dto.dart';
import 'package:moviez_app/infrastructure/movie_details/dtos/movie_details_dto.dart';
import 'package:moviez_app/infrastructure/search/dtos/search_result_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  // Home APIs
  @GET(ApiConstants.trending)
  Future<MoviesDataDto> getTrendingMovies(
    @Query('language') String language,
    @Query('page') String page,
  );

  @GET(ApiConstants.popular)
  Future<MoviesDataDto> getPopularMovies(
    @Query('language') String language,
    @Query('page') String page,
  );

  // Movie Details APIs
  @GET('${ApiConstants.movieDetails}{movieId}')
  Future<MovieDetailsDto> getMovieDetails(@Path('movieId') int movieId);

  @GET('${ApiConstants.movieDetails}{movieId}/videos')
  Future<dynamic> getMovieVideos(@Path('movieId') int movieId);

  @GET('${ApiConstants.movieDetails}{movieId}/credits')
  Future<dynamic> getMovieCast(@Path('movieId') int movieId);

  // Search API
  @GET(ApiConstants.searchMovie)
  Future<SearchResultDto> searchMovies(@Query('query') String query);
}
