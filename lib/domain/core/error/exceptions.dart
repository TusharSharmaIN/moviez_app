class ServerException implements Exception {
  final int code;
  final String message;

  ServerException({this.code = 0, this.message = ''});
}

class OtherException implements Exception {
  final String message;

  OtherException({this.message = ''});
}
