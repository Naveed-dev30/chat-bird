import 'package:chat_bird/app/features/auth/data/data_stores/remote/auth_remote_data_store.dart';
import 'package:chat_bird/app/helpers/remote_db_helper/remote_db_helper.dart';

class AuthRemoteDataStoreImpl implements AuthRemoteDataStore {
  @override
  late final RemoteDBHelper remoteDBHelper;

  AuthRemoteDataStoreImpl(this.remoteDBHelper);

  @override
  Future<void> sendSmsToken(String phoneNumber) async {
    await remoteDBHelper.sendSmsToken(phoneNumber);
  }
}
