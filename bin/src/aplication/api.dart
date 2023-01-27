import 'package:shelf/shelf_io.dart' as shelf_io;

import '../router/index_router.dart';

class Api {
  execute() {
    const host = 'localhost';
    const port = 3001;

    shelf_io.serve(IndexRouter.handler, host, port);
    print('Server is running on port $port');
  }
}
