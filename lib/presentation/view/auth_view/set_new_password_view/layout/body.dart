import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';
import 'package:trading_app/navigation_helper/navigation_helper.dart';
import 'package:trading_app/presentation/view/auth_view/signin_view/signin_view.dart';

import '../../../../elements/app_logo.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_field_title.dart';
import '../../../../elements/custom_text_field.dart';

class SetNewPasswordViewBody extends StatelessWidget {
  const SetNewPasswordViewBody({Key? key}) : super(key: key);

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
                  'Set new password',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Enter your new password below and check the hint while setting it.',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomFieldTitle(
                  fieldText: 'Set new password',
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(hintText: 'abc@gmail.com'),
                const SizedBox(
                  height: 20,
                ),
                const CustomFieldTitle(
                  fieldText: 'Confirm Password',
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(hintText: 'abc@gmail.com'),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                    buttonText: 'Confirm',
                    onTapped: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              backgroundColor: Colors.transparent,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                margin: const EdgeInsets.only(top: 100, bottom: 100),
                                height: MediaQuery.of(context).size.height * 42,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: AppColors.klightColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'asset/image/success.png',
                                          height: 105,
                                          width: 105,
                                        ),
                                        const SizedBox(height: 20,),
                                        Text(
                                          'Password Recovery Successful',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Password Recovery Successful',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall!
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                        ),
                                        const SizedBox(
                                          height: 75,
                                        ),
                                        CustomButton(buttonText: 'Return To Login', onTapped: (){
                                          NavigationHelper.pushRoute(context, const SignInView());
                                        }),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          });
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
