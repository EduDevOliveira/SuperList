import 'package:supertodolist/core/config/config.dart';
import 'package:supertodolist/core/initialization/services/logger_service.dart';

class FlavorService {
  static Future<void> setupFlavor() async {
    const flavorString = String.fromEnvironment(
      'FLAVOR',
      defaultValue: 'development',
    );

    final flavor = Flavor.values
        .where(
          (element) => element.name == flavorString.toLowerCase(),
        )
        .first;
    Config.setup(flavor);

    LoggerService.log("Aplicativo iniciado com flavor: $flavorString");
  }
}
