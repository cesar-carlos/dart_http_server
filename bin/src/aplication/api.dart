import 'package:shelf/shelf_io.dart' as shelf_io;

import '../router/index_router.dart';

class Api {
  final indexRouter = IndexRouter();

  execute() {
    shelf_io.serve(indexRouter.handler, 'localhost', 3001);
  }
}
