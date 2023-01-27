import 'package:args/args.dart';
import '../model/start_args_model.dart';

class Args {
  static parse(List<String> args) {
    var parser = ArgParser()
      ..addOption('host',
          abbr: 'h', defaultsTo: '127.0.0.1', help: 'ip da balança')
      ..addOption('port',
          abbr: 'p', defaultsTo: '4000', help: 'porta da balança')
      ..addFlag('help', negatable: false, help: 'help');

    var results = parser.parse(args);

    if (results['help']) {
      print(parser.usage);
    }

    return StartArgsModel(
      host: results['host'],
      port: int.tryParse(results['port']),
      help: results['help'],
    );
  }
}
