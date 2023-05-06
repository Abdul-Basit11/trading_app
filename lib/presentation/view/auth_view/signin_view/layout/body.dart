import 'package:flutter/material.dart';
import 'package:trading_app/navigation_helper/navigation_helper.dart';

import '../../../../../configuration/app_colors.dart';
import '../../../../elements/app_logo.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_field_title.dart';
import '../../../../elements/custom_text_field.dart';
import '../../../../elements/divider_row.dart';
import '../../../home_view/home_view/home_view.dart';
import '../../forogt_password_view/forgot_password_view.dart';
import '../../signup_view/signup_view.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({Key? key}) : super(key: key);

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  bool isTrue=false;
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
                  height: 15,
                ),
                Text(
                  'Login to your account',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Welcome back, please enter your details. ',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomFieldTitle(
                  fieldText: 'Email Address',
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(hintText: 'abc@gmail.com'),
                const SizedBox(
                  height: 16,
                ),
                const CustomFieldTitle(
                  fieldText: 'Password',
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  hintText: '************',
                  obsecureText: true,
                  isPasswordField: true,
                ),
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            activeColor: AppColors.klightColor,
                            checkColor: AppColors.kPrimaryColor,
                            value: isTrue,
                            onChanged: (v) {
                              setState(() {
                                isTrue=v!;
                              });
                            }),
                        Text('Remember Me',style: Theme.of(context).textTheme.titleSmall,),

                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                             NavigationHelper.pushRoute(context, ForgotPasswordView());

                            },
                            child: Text(
                              'Forgot Password ?',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontWeight: FontWeight.w600),
                            )),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(buttonText: 'Login', onTapped: () {
                  NavigationHelper.pushRoute(context, HomeView());
                }),
                const SizedBox(
                  height: 30,
                ),
                const DividerRow(),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 47,
                      decoration: BoxDecoration(
                        color: AppColors.klightColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'asset/image/google.png',
                            height: 27,
                            width: 27,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Google',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: Container(
                      height: 47,
                      decoration: BoxDecoration(
                        color: AppColors.klightColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'asset/image/binance_coin.png',
                            height: 27,
                            width: 27,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Binance',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Don't Have An Account?\t\t\t",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        NavigationHelper.pushRoute(context, SignUpView());
                      },
                      child: Text(
                        'Sign Up',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.kPrimaryColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 55,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
