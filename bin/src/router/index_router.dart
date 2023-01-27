import 'package:shelf/shelf.dart';

import '../Middleware/autorize_middleware.dart';
import 'my_router.dart';

abstract class IndexRouter {
  static Handler get handler {
    final router = MyRouter();

    router.myGet(
      route: '/',
      middleware: [logRequests(), autorizer()],
      handler: (Request request) => Response.ok('Data7 API'),
    );

    return router.routers;
  }
}
