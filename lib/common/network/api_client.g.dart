// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiClient implements ApiClient {
  _ApiClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Recipes> getRandomRecipes({number = 10, tags}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'number': number, r'tags': tags};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Recipes>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/recipes/random',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Recipes.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
