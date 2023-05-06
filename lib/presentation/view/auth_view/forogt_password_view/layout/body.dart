import 'package:flutter/material.dart';
import 'package:trading_app/navigation_helper/navigation_helper.dart';

import '../../../../elements/app_logo.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_field_title.dart';
import '../../../../elements/custom_text_field.dart';
import '../../authy_verification_view/authy_verification_view.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({Key? key}) : super(key: key);

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
                  'Forgot Password',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Input your email address to fix the issue.',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomFieldTitle(
                  fieldText: 'Email Address',
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(hintText: 'abc@gmail.com'),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(buttonText: 'Confirm', onTapped: () {
                  NavigationHelper.pushRoute(context, AuthyVerificationView());
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
