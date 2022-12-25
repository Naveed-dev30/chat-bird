import 'package:chat_bird/app/helpers/remote_db_helper/remote_db_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseDBHelperImpl implements RemoteDBHelper {
  @override
  Future<void> initialize() async {
    await Firebase.initializeApp();
  }

  @override
  Future<void> sendSmsToken(String phone) async {
    await FirebaseAuth.instance.signInWithPhoneNumber(phone);
  }
}
