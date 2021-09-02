import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';
import '../../helpers/auth.layout.dart';
import 'package:ieatta/app/controller/auth.controller.dart';

class ForgotPasswordPage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey key = GlobalKey<FormState>();
    return Scaffold(
      body: AuthenticationLayout(
        title: "Reset Password",
        subtitle: "Please fill up your email",
        mainButtonTitle: "Send",
        onMainButtonTapped: () {
          // final FormState form = key.currentState;
          // if (form.validate()) {
          //   form.save();
          //   controller.sendResetPassword();
          // } else
          //   print('error');
        },
        form: Form(
          key: key,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => controller.email = value,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 16.0),
                ),
                validator: (value) {
                  if (!isEmail(value!)) {
                    return 'Insert valid email';
                  } else
                    return null;
                },
              ),
            ],
          ),
        ), validationMessage: '', onBackPressed: () {  }, onForgotPassword: () {  }, bottomWidget: Container(),
      ),
    );
  }
}
