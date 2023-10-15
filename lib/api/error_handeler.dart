import 'package:dio/dio.dart';

import '../../../index.dart';

// * code ---> 1:success , -1:failure
class Error implements Exception {
  int code = -1;
  String message = "";
  Error({required this.code, required this.message});

  @override
  String toString() {
    if (message == "") return "Exception";
    return "Exception: code $code, $message";
  }
}

// * errors
void onDioException(Error error) {
  debugPrint('error.code -> ${error.code}, error.message -> ${error.message}');
  switch (error.code) {
    case 401:
      // UserStore.to.logout();
      break;
    default:
      break;
  }
}

Error createErrorEntity(DioException error) {
  switch (error.type) {
    /* case DioException.cancel:
      return Error(
        code: -1,
        message: "request cancel",
      );
    case DioException.connectTimeout:
      return Error(
        code: -1,
        message: "connection timed out",
      );
    case DioException.sendTimeout:
      return Error(
        code: -1,
        message: "request timed out",
      );
    case DioException.receiveTimeout:
      return Error(
        code: -1,
        message: "response timeout",
      ); */
    case DioExceptionType.badResponse && DioExceptionType.badCertificate:
      {
        try {
          int errorCode =
              error.response != null ? error.response!.statusCode! : -1;

          switch (errorCode) {
            case 400:
              return Error(
                code: errorCode,
                message: fetchError(error) ?? "request syntax error",
              );
            case 401:
              return Error(
                code: errorCode,
                message: fetchError(error) ?? "permission denied",
              );
            case 403:
              return Error(
                code: errorCode,
                message: fetchError(error) ?? "The server refuses to execute",
              );
            case 404:
              return Error(
                code: errorCode,
                message: fetchError(error) ?? "can not reach server",
              );
            case 405:
              return Error(
                code: errorCode,
                message: fetchError(error) ?? "request method is forbidden",
              );
            case 422:
              return Error(
                code: errorCode,
                message: fetchError(error) ?? "Unprocessable Entity",
              );
            case 500:
              return Error(
                code: errorCode,
                message: fetchError(error) ?? "internal server error",
              );
            case 502:
              return Error(
                code: errorCode,
                message: fetchError(error) ?? "invalid request",
              );
            case 503:
              return Error(
                code: errorCode,
                message: fetchError(error) ?? "server down",
              );
            case 505:
              return Error(
                code: errorCode,
                message: fetchError(error) ??
                    "does not support HTTP protocol requests",
              );
            default:
              {
                return Error(
                  code: errorCode,
                  message: fetchError(error) ??
                      (error.response != null
                          ? error.response!.statusMessage!
                          : ""),
                );
              }
          }
        } on Exception catch (_) {
          return Error(
            code: -1,
            message: fetchError(error) ?? "unknown error",
          );
        }
      }
    default:
      {
        return Error(code: -1, message: error.message.toString());
      }
  }
}

String? fetchError(DioException e) {
  debugPrint("====> response ===> ${e.response}");
  String? error /*  = 'Unprocessable Entity' */;
  if (e.response!.data["data"] != null &&
      !e.response!.data["data"].toString().contains("id")) {
    (e.response!.data["data"] as Map).forEach((key, value) {
      debugPrint("====> key ===> $key");
      debugPrint("====> value ===> ${value[0]}");
      error = value[0];
    });
  } else {
    error = e.response!.data["message"];
  }
  return error;
}
