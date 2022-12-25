import 'package:chat_bird/app/abstraction/usecase.dart';
import 'package:chat_bird/app/abstraction/usecase_params.dart';
import 'package:chat_bird/app/features/onboard/data/repository/onboard_repository.dart';

class SetOnboardSeenUsecase extends Usecase<void, NoParams> {
  SetOnboardSeenUsecase(this.repository);

  @override
  late final OnboardRepository repository;

  @override
  Future<void> call(NoParams params) async {
    return await repository.setOnboardSeen();
  }
}
