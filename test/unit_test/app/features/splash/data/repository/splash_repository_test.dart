import 'package:chat_bird/app/abstraction/remote_data_store.dart';
import 'package:chat_bird/app/exceptions/persistance_exceptions.dart';
import 'package:chat_bird/app/features/splash/data/data_store/local/splash_local_data_store.dart';
import 'package:chat_bird/app/features/splash/data/repository/splash_repository.dart';
import 'package:chat_bird/app/features/splash/data/repository/splash_repository_imp.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../mocks/local_data_stores/splash_local_data_store/splash_local_data_store_mock.mocks.dart';

void main() {
  late final SplashRepository repository;
  late final SplashLocalDataStore splashLocalDataStore;
  late final NoRemoteDataStore noRemoteDataStore;

  setUpAll(() {
    splashLocalDataStore = MockSplashLocalDataStore();
    noRemoteDataStore = NoRemoteDataStore();
    repository = SplashRepositoryImp(splashLocalDataStore, noRemoteDataStore);
  });

  test('IsOnboardSeen is false, when returned false from local datastore', () async {
    when(splashLocalDataStore.isOnboardSeen()).thenAnswer((realInvocation) async => false);

    final isSeen = await repository.isOnboardSeen();

    expect(isSeen, false);
  });

  test('IsOnboardSeen is true, when returned true from local datastore', () async {
    when(splashLocalDataStore.isOnboardSeen()).thenAnswer((realInvocation) async => true);

    final isSeen = await repository.isOnboardSeen();

    expect(isSeen, true);
  });

  test('IsOnboardSeen is false, when NoPersistedValueFoundException thrown from local datastore', () async {
    when(splashLocalDataStore.isOnboardSeen()).thenThrow(
      NoPersistedValueFoundException(),
    );

    final isSeen = await repository.isOnboardSeen();

    expect(isSeen, false);
  });
}
