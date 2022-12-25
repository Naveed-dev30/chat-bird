import 'package:chat_bird/app/features/auth/data/usecases/send_sms_token_usecase.dart';
import 'package:flutter/material.dart';

class PhoneSigninViewModel {
  final SendSmsUsecase sendSmsUsecase;

  PhoneSigninViewModel(this.sendSmsUsecase);

  final phoneNumberController = TextEditingController();

  Future<void> sendSmsCode() async {
    await sendSmsUsecase.call(phoneNumberController.text);
  }
}
