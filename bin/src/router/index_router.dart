import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';

import 'balanca_router.dart';

class IndexRouter {
  Handler get handler {
    final router = Router();
    final pipeline = Pipeline()
        .addMiddleware(logRequests())
        .addHandler((Request request) => Response.ok('Data7 API'));

    router.get('/', pipeline);

    // router.get('/', (Request request) => Response.ok('Data7 API'));

    router.get('/balanca', BalancaRouter.get);
    router.post('/balanca', BalancaRouter.post);
    router.put('/balanca', BalancaRouter.put);
    router.delete('/balanca', BalancaRouter.delete);
    router.patch('/balanca', BalancaRouter.patch);

    router.all('/<ignored|.*>',
        (Request request) => Response.notFound('Page not found'));

    return router;
  }
}
