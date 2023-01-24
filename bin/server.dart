import 'src/aplication/app.dart';
import 'src/aplication/args.dart';

void main(List<String> args) {
  var startArgs = Args.parse(args);

  if (startArgs.help) {
    return;
  }

  var app = App();
  app.execute();
}
