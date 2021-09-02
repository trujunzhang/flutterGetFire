import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ieatta/app/controller/auth.controller.dart';
import 'package:ieatta/app/core/theme/app_color.dart';

class SocialButtonsWidget extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Or Continue with social account",
            style: Theme.of(context).textTheme.bodyText1),
        SizedBox(
          height: 10.0,
        ),
        // if device is ios show
        // continue with apple
        if (Platform.isIOS)
          GestureDetector(
            onTap: () => controller.signInWithApple(),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.DARK,
                borderRadius: BorderRadius.circular(22),
              ),
              child: controller.busy.value
                  ? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.apple, color: AppColors.WHITE),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Continue with Apple",
                          style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
            ),
          ),
        SizedBox(
          height: 10.0,
        ),
        GestureDetector(
          onTap: () => controller.signInWithGoogle(),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.WHITE,
              border: Border.all(
                  style: BorderStyle.solid, width: 1.0, color: AppColors.DARK),
              borderRadius: BorderRadius.circular(22),
            ),
            child: controller.busy.value
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.google, color: AppColors.DARK),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Sign up with Google",
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18.0,
                            color: AppColors.DARK,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
