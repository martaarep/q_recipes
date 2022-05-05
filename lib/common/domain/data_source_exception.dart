class DataSourceException implements Exception {
  final String? message;

  DataSourceException({this.message = 'Data source error'});

  @override
  String toString() {
    return message!;
  }
}

class AuthLocalDataSourceException implements Exception {}
