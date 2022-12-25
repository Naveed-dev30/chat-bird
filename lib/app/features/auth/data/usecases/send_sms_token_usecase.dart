import 'package:chat_bird/app/abstraction/usecase.dart';
import 'package:chat_bird/app/features/auth/data/repository/auth_repository.dart';

class SendSmsUsecase extends Usecase<void, String> {
  @override
  late final AuthRepository repository;

  SendSmsUsecase(this.repository);

  @override
  Future<void> call(String params) async {
    await repository.sendSmsToken(params);
  }
}
