import 'package:shelf/shelf.dart';

Middleware autorizer({void Function(String message, bool isError)? logger}) =>
    (innerHandler) {
      return (request) {
        return Future.sync(() => innerHandler(request)).then((response) {
          print(response);
          return response;
        }, onError: (Object error, StackTrace stackTrace) {
          throw error;
        });
      };
    };
