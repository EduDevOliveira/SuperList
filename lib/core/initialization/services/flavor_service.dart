import 'package:todolist/core/config/config.dart';
import 'package:todolist/core/initialization/services/logger_service.dart';

class FlavorService {
  static Future<void> setupFlavor() async {
    const flavorString = String.fromEnvironment(
      'FLAVOR',
      defaultValue: 'development',
    );

    final flavor = flavorString.toLowerCase() == 'development'
        ? Flavor.development
        : Flavor.production;
    Config.setup(flavor);

    LoggerService.log("Aplicativo iniciado com flavor: $flavorString");
  }
}
