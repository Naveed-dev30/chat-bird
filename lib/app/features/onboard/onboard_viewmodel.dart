import 'package:flutter/material.dart';

class OnboardScreenViewModel {
  final pageViewCurrentIndex = ValueNotifier(0);

  void changePageIndex(int index) {
    pageViewCurrentIndex.value = index;
  }
}
