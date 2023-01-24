class StartArgsModel {
  final String? host;
  final int? port;
  final bool? help;

  StartArgsModel({
    this.host,
    this.port,
    this.help,
  });

  @override
  String toString() {
    return 'StartArgs{host: $host, port: $port,  help: $help}';
  }
}
