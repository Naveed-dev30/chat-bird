import 'package:chat_bird/app/di/di.dart';
import 'package:chat_bird/app/features/auth/data/data_stores/remote/auth_remote_data_store.dart';
import 'package:chat_bird/app/features/auth/data/data_stores/remote/auth_remote_data_store_impl.dart';
import 'package:chat_bird/app/features/auth/data/repository/auth_repository.dart';
import 'package:chat_bird/app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:chat_bird/app/features/auth/data/usecases/send_sms_token_usecase.dart';
import 'package:chat_bird/app/features/auth/phone_signin_view_model.dart';
import 'package:get_it/get_it.dart';

class AuthFeatureDI {
  AuthFeatureDI._();

  static final _sl = DI.sl;

  static void inject() {
    /// [ViewModel]
    GetIt.I.registerLazySingleton(() => PhoneSigninViewModel(_sl()));

    /// [Repository]
    GetIt.I.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(_sl(), _sl()),
    );

    /// [Usecases]
    GetIt.I.registerLazySingleton(() => SendSmsUsecase(_sl()));

    ///DataStore
    GetIt.I.registerLazySingleton<AuthRemoteDataStore>(() => AuthRemoteDataStoreImpl(_sl()));
  }
}
