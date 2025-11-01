import 'package:moviez_app/config.dart';
import 'package:moviez_app/domain/home/repository/i_home_repository.dart';

class HomeRepository implements IHomeRepository {
  final Config config;
  // final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepository({
    required this.config,
    // required this.homeRemoteDataSource,
  });

}
