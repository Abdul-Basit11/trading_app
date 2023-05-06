import 'package:flutter/material.dart';
import 'package:trading_app/navigation_helper/navigation_helper.dart';
import 'package:trading_app/presentation/elements/custom_button.dart';

import '../../../../../configuration/app_colors.dart';
import '../../deposit_address_view/deposit_address_view.dart';

class DepositViewBody extends StatelessWidget {
  const DepositViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Deposit',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deposit USDT only',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: '1 .',
                            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                            ' You need to buy yearly subscription & add gas fee to start your trading\n',
                            style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                height: 2,
                                color: AppColors.kWhiteColor.withOpacity(0.67))),
                        TextSpan(
                            text: '2 .',
                            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                            ' Initial deposit should be 150 USDT. In which 120 USDT is for “Yearly Subscription” and 30 USDT will be available in your “Assets Balance” for trades Gas Fee.\n',
                            style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(


                                height: 2,
                                color: AppColors.kWhiteColor.withOpacity(0.67))),



                      ]),
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Note:',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: '1 .',
                            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                            ' We accept only USDT (TRC20) assets\n',
                            style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                height: 2,
                                color: AppColors.kWhiteColor.withOpacity(0.67))),
                        TextSpan(
                            text: '2 .',
                            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                            ' When you send the USDT on the above address, it may take few minutes to arrive in your account\n',
                            style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(


                                height: 2,
                                color: AppColors.kWhiteColor.withOpacity(0.67))),
                        TextSpan(
                            text: '3 .',
                            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                            ' If your account is inactive, You cannot withdraw any funds. Your account must be active.\n',
                            style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(


                                height: 2,
                                color: AppColors.kWhiteColor.withOpacity(0.67))),


                      ]),
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                  buttonText: 'Deposit',
                  onTapped: () {
                    NavigationHelper.pushRoute(context, const DepositAddressView());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
