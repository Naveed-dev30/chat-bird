import 'package:chat_bird/app/const/persistance_keys.dart';
import 'package:chat_bird/app/exceptions/persistance_exceptions.dart';
import 'package:chat_bird/app/features/splash/data/data_store/local/splash_local_data_store.dart';
import 'package:chat_bird/app/features/splash/data/data_store/local/splash_local_data_store_impl.dart';
import 'package:chat_bird/app/helpers/persistance_helper/persistance_helper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../../mocks/helpers/hive_persistance/hive_persistance_mock.mocks.dart';

void main() {
  late final SplashLocalDataStore localDataStore;
  late final PersistanceHelper persistanceHelper;

  setUpAll(() {
    persistanceHelper = MockHivePersistance();
    localDataStore = SplashLocalDataStoreImpl(persistanceHelper);
  });

  group('Test Local DataStore', () {
    test(
      'Is onboard seen is false, when return false from persistance',
      () async {
        when(persistanceHelper.getBool(PersistanceKeys.ONBOARD_SEEN)).thenAnswer((realInvocation) async => false);

        final isSeen = await localDataStore.isOnboardSeen();

        expect(isSeen, false);
      },
    );

    test(
      'Is onboard seen is true, when return true from persistance',
      () async {
        when(persistanceHelper.getBool(PersistanceKeys.ONBOARD_SEEN)).thenAnswer((realInvocation) async => true);

        final isSeen = await localDataStore.isOnboardSeen();

        expect(true, isSeen);
      },
    );

    test(
      'Is onboard seen throws NoPersistedValueFound, when return null from persistance',
      () async {
        when(persistanceHelper.getBool(PersistanceKeys.ONBOARD_SEEN)).thenAnswer((realInvocation) async => null);

        expect(localDataStore.isOnboardSeen(), throwsA(NoPersistedValueFoundException()));
      },
    );
  });
}
