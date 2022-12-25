abstract class RemoteDBHelper {
  Future<void> initialize();

  Future<void> sendSmsToken(String phone);
}
