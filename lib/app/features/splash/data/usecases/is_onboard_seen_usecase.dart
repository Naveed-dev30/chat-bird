import 'package:chat_bird/app/abstraction/usecase.dart';
import 'package:chat_bird/app/abstraction/usecase_params.dart';
import 'package:chat_bird/app/features/splash/data/repository/splash_repository.dart';

class IsOnboardSeenUsecase extends Usecase<bool, NoParams> {
  IsOnboardSeenUsecase(this.repository);

  @override
  late final SplashRepository repository;

  @override
  Future<bool> call(NoParams params) async {
    return await repository.isOnboardSeen();
  }
}
