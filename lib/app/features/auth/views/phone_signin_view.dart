import 'package:chat_bird/app/features/auth/phone_signin_view_model.dart';
import 'package:flutter/material.dart';

class PhoneSignInScreen extends StatelessWidget {
  const PhoneSignInScreen(this.viewModel, {super.key});

  final PhoneSigninViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: viewModel.phoneNumberController,
          ),
          TextButton(
            onPressed: viewModel.sendSmsCode,
            child: Text("Send"),
          ),
        ],
      ),
    );
  }
}
