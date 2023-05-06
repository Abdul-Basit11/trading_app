import 'package:flutter/material.dart';
import 'package:trading_app/presentation/view/auth_view/set_new_password_view/set_new_password_view.dart';

import '../../../../../navigation_helper/navigation_helper.dart';
import '../../../../elements/app_logo.dart';
import '../../../../elements/custom_button.dart';
import 'widget/verification_text_field.dart';

class AuthyVerificationViewBody extends StatelessWidget {
  const AuthyVerificationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Center(child: AppLogo()),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  'Authy Verification',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Check your email inbox or Spam folder to check the verification code',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    VerificationTextField(),
                    VerificationTextField(),
                    VerificationTextField(),
                    VerificationTextField(),
                    VerificationTextField(),

                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(buttonText: 'Confirm', onTapped: () {
                  NavigationHelper.pushRoute(context, SetNewPasswordView());
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
