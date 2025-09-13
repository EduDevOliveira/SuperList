import 'package:flutter_modular/flutter_modular.dart';
import 'package:supertodolist/core/config/config.dart';
import 'package:supertodolist/core/initialization/implements/secure_storage_service.dart';
import 'package:supertodolist/core/initialization/interfaces/i_baas.dart';
import 'package:supertodolist/core/initialization/implements/firebase_sevice.dart';
import 'package:supertodolist/core/initialization/implements/shared_preferences_service.dart';
import 'package:supertodolist/core/initialization/implements/dio_http_client.dart';
import 'package:supertodolist/core/initialization/interfaces/i_http_client.dart';
import 'package:supertodolist/core/initialization/interfaces/i_secure_storage.dart';
import 'package:supertodolist/core/initialization/interfaces/i_storage.dart';
import 'package:supertodolist/features/app/presentation/bloc/app_bloc.dart';
import 'package:supertodolist/features/dashboard/dashboard_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addInstance(Config.instance);
    i.addInstance<IBaas>(FirebaseService.instance);
    i.addInstance<ISecureStorage>(SecureStorageService.instance);
    i.addInstance<IStorage>(SharedPreferencesService.instance);
    i.addSingleton<IHttpClient>(DioHttpClient.new);
    i.addSingleton(AppBloc.new);
  }

  @override
  void routes(r) {
    r.module(Modular.initialRoute, module: DashboardModule());
  }
}
