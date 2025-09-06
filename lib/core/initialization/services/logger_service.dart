import 'dart:developer' as dev;
import 'package:todolist/core/config/config.dart';

enum LogLevel { debug, info, warning, error }

class LoggerService {
  // Define se os logs estão habilitados (somente em development)
  static bool get isEnabled => Config.instance.flavor == Flavor.development;

  /// Inicializa o logger (pode configurar destinos como arquivos, Firebase, etc.)
  static void init() {
    if (isEnabled) {
      log('LoggerService iniciado', level: LogLevel.info);
    }
  }

  /// Função principal de log
  static void log(String message, {LogLevel level = LogLevel.debug}) {
    if (!isEnabled) return;

    final timestamp = DateTime.now().toIso8601String();
    final levelString = _levelToString(level);

    // Formata a mensagem
    final logMessage = '[$timestamp] [$levelString]: $message';

    // Aqui podemos expandir para salvar em arquivo ou enviar para servidor
    dev.log(logMessage);
  }

  static String _levelToString(LogLevel level) {
    switch (level) {
      case LogLevel.debug:
        return 'DEBUG';
      case LogLevel.info:
        return 'INFO';
      case LogLevel.warning:
        return 'WARNING';
      case LogLevel.error:
        return 'ERROR';
    }
  }

  /// Funções auxiliares para facilitar chamadas
  static void debug(String message) => log(message, level: LogLevel.debug);
  static void info(String message) => log(message, level: LogLevel.info);
  static void warning(String message) => log(message, level: LogLevel.warning);
  static void error(String message) => log(message, level: LogLevel.error);
}
