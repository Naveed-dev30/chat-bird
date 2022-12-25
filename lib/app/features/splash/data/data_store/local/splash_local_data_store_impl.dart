import 'package:chat_bird/app/const/persistance_keys.dart';
import 'package:chat_bird/app/exceptions/persistance_exceptions.dart';
import 'package:chat_bird/app/features/splash/data/data_store/local/splash_local_data_store.dart';
import 'package:chat_bird/app/helpers/persistance_helper/persistance_helper.dart';

class SplashLocalDataStoreImpl implements SplashLocalDataStore {
  SplashLocalDataStoreImpl(this.persistanceHelper);

  @override
  late final PersistanceHelper persistanceHelper;

  @override
  Future<bool> isOnboardSeen() async {
    final value = await persistanceHelper.getBool(PersistanceKeys.ONBOARD_SEEN);
    if (value == null) {
      throw NoPersistedValueFoundException();
    }
    return value;
  }

  @override
  Future<void> setOnboardSeen() async {
    await persistanceHelper.writeBool(PersistanceKeys.ONBOARD_SEEN, true);
  }
}
