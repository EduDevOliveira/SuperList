enum Flavor { development, production }

class Config {
  // Flavor atual do app
  final Flavor flavor;

  // URLs de API diferentes por flavor
  final String apiBaseUrl;

  // Qualquer outra configuração global
  final bool enableCrashlytics;
  final bool enableAnalytics;

  // Singleton para acesso global
  static late Config _instance;
  static Config get instance => _instance;

  // Construtor privado
  Config._internal({
    required this.flavor,
    required this.apiBaseUrl,
    this.enableCrashlytics = false,
    this.enableAnalytics = false,
  });

  /// Configura a instância global
  static void setup(Flavor flavor) {
    switch (flavor) {
      case Flavor.development:
        _instance = Config._internal(
          flavor: flavor,
          apiBaseUrl: 'https://dev.api.com',
          enableCrashlytics: false,
          enableAnalytics: false,
        );
        break;

      case Flavor.production:
        _instance = Config._internal(
          flavor: flavor,
          apiBaseUrl: 'https://api.com',
          enableCrashlytics: true,
          enableAnalytics: true,
        );
        break;
    }
  }

  /// Helper para checar se está em modo de desenvolvimento
  bool get isDevelopment => flavor == Flavor.development;

  /// Helper para checar se está em modo produção
  bool get isProduction => flavor == Flavor.production;
}
