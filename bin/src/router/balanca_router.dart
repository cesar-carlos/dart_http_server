import 'dart:async';

import 'package:shelf/shelf.dart';

class BalancaRouter {
  static FutureOr<Response> get(Request request) async {
    return Response.ok('get balanca');
  }

  static FutureOr<Response> post(Request request) async {
    return Response.ok('post balanca');
  }

  static FutureOr<Response> put(Request request) async {
    return Response.ok('put balanca');
  }

  static FutureOr<Response> delete(Request request) async {
    return Response.ok('delete balanca');
  }

  static FutureOr<Response> patch(Request request) async {
    return Response.ok('patch balanca');
  }
}
