import 'api.dart';

class App {
  final api = Api();

  App() {
    print('App created');
  }

  execute() {
    api.execute();
  }
}
