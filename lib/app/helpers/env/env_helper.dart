import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Env {
  Future<void> load({required String envFilePath});
  String envString(String key);
  int envInt(String key);
  double envDouble(String key);
}

///[Using DotEnv package]
class DotEnvHelper implements Env {
  @override
  Future<void> load({required String envFilePath}) async {
    await dotenv.load(fileName: envFilePath);
  }

  @override
  String envString(String key) {
    return dotenv.env[key] as String;
  }

  @override
  int envInt(String key) {
    return dotenv.env[key] as int;
  }

  @override
  double envDouble(String key) {
    return dotenv.env[key] as double;
  }
}
