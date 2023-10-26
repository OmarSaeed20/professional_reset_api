import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:professional_reset_api/api/network_exceptions/network_exceptions.dart';

Dio get intiDio {
  late Dio dio;
  // CancelToken cancelToken = CancelToken();

  BaseOptions options = BaseOptions(
    baseUrl: 'https://gorest.co.in/public/v2/',
    connectTimeout: 10000,
    receiveTimeout: 10000,
    headers: {
      "Accept": "application/json",
      "lang": "ar",
    },
    contentType: 'application/json; charset=utf-8',
    responseType: ResponseType.json,
  );

  dio = Dio(options);

  /* dio.httpClientAdapter = IOHttpClientAdapter(
    createHttpClient: () {
      // Don't trust any certificate just because their root cert is trusted.
      final HttpClient client =
          HttpClient(context: SecurityContext(withTrustedRoots: false));
      // You can test the intermediate / root cert here. We just ignore it.
      client.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);
      return client;
    },
  ); */
  dio.interceptors.add(
    LogInterceptor(
      // logPrint: (object) => debugPrint(object.toString()),
      error: true,
      request: true,
      requestBody: true,
      responseBody: true,
      requestHeader: false,
      responseHeader: false,
    ),
  );
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) => handler.next(options),
      onResponse: (response, handler) => handler.next(response),
      onError: (DioError dioError, handler) { 
        /*Error error = createErrorEntity(dioError);
        onDioException(error); */
        return handler.next(dioError);
      },
    ),
  );

  return dio;
}
