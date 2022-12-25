import 'package:chat_bird/app/abstraction/usecase_params.dart';
import 'package:chat_bird/app/features/onboard/data/usecases/set_onboard_seen_usecase.dart';
import 'package:flutter/material.dart';

class OnboardScreenViewModel {
  final SetOnboardSeenUsecase setOnboardSeenUsecase;

  OnboardScreenViewModel(this.setOnboardSeenUsecase);

  final pageViewCurrentIndex = ValueNotifier(0);

  void changePageIndex(int index) {
    pageViewCurrentIndex.value = index;
  }

  Future<void> setOnboardSeen() async {
    await setOnboardSeenUsecase.call(NoParams());
  }
}
