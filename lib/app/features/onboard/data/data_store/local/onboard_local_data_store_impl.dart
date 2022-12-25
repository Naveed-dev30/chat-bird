import 'package:chat_bird/app/const/persistance_keys.dart';
import 'package:chat_bird/app/helpers/persistance_helper/persistance_helper.dart';
import 'onboard_local_data_store.dart';

class OnboardLocalDataStoreImpl implements OnboardLocalDataStore {
  OnboardLocalDataStoreImpl(this.persistanceHelper);

  @override
  late final PersistanceHelper persistanceHelper;

  @override
  Future<void> setOnboardSeen() async {
    await persistanceHelper.writeBool(PersistanceKeys.ONBOARD_SEEN, true);
  }
}
