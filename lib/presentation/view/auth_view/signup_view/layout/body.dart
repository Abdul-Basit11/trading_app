import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';
import 'package:trading_app/navigation_helper/navigation_helper.dart';

import '../../../../elements/app_logo.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_field_title.dart';
import '../../../../elements/custom_text_field.dart';
import '../../../../elements/divider_row.dart';
import '../../signin_view/signin_view.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({Key? key}) : super(key: key);

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
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
                  'Create an Account',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Sign up now to get started with an account.',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomFieldTitle(
                  fieldText: 'Full Name',
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(hintText: 'Full Name'),
                const SizedBox(
                  height: 16,
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
                const SizedBox(
                  height: 16,
                ),
                const CustomFieldTitle(
                  fieldText: 'Confirm Password',
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(
                    hintText: '************',
                    obsecureText: true,
                    isPasswordField: true),
                const SizedBox(
                  height: 16,
                ),
                const CustomFieldTitle(
                  fieldText: 'Country Name',
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.klightColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('United State Of America',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.white.withOpacity(0.4), fontWeight: FontWeight.w400),),
                      Icon(Icons.arrow_drop_down,color: AppColors.kWhiteColor.withOpacity(0.4),)
                    ],
                  )
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFieldTitle(
                  fieldText: 'Referral code',
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  hintText: '5424658662',
                  textInputType: TextInputType.number,
                ),
                const SizedBox(
                  height: 30,
                ),
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
                    Text(
                      'Remember Me',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(buttonText: 'Sign up', onTapped: () {}),
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
                      'Already Have An Account?\t\t\t',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        NavigationHelper.pushRoute(context, SignInView());
                      },
                      child: Text(
                        'Sign In',
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
