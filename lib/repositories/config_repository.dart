import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:nasa/core/env_constants.dart';

class ConfigRepository {
  final DotEnv dotEnv;
  const ConfigRepository({required this.dotEnv});

  String? getApiKey() {
    return dotEnv.env[EnvConstants.apiKey];
  }
}
