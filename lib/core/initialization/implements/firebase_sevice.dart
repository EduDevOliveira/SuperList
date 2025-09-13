import 'package:firebase_core/firebase_core.dart';
import 'package:supertodolist/core/initialization/interfaces/i_baas.dart';
import 'package:supertodolist/firebase_options.dart';
import '../services/logger_service.dart';

class FirebaseService implements IBaas {
  FirebaseService._private();
  static final FirebaseService _instance = FirebaseService._private();
  static FirebaseService get instance => _instance;

  static Future<void> init() async {
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      
      LoggerService.info('Firebase inicializado com sucesso');
    } catch (e) {
      LoggerService.error('Erro ao inicializar Firebase: $e');
    }
  }
}
