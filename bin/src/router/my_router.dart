import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

// ignore: subtype_of_sealed_class
class MyRouter extends Router {
  final router = Router();

  myGet({
    required String route,
    List<Middleware>? middleware,
    required Function handler,
  }) {
    final pipeline = Pipeline()
        .addMiddleware(logRequests())
        .addHandler((Request request) => Response.ok('Data7 API'));

    router.get('/', pipeline);
  }

  Router get routers => router;
}
