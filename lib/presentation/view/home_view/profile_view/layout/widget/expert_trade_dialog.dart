import 'package:flutter/material.dart';

import '../../../../../../configuration/app_colors.dart';
import '../../../../../elements/custom_button.dart';

class ExpertTradeDialog extends StatelessWidget {
  const ExpertTradeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.klightColor),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                'Eligibility',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 15,
                    color: AppColors.kPrimaryColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: '1 .',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: ' You will open & close a minimum 15 trades\n',
                      style:
                          Theme.of(context).textTheme.labelMedium!.copyWith()),
                  TextSpan(
                      text: '2 .',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          ' Your all trades accuracy rate should be minimum 80%\n',
                      style:
                          Theme.of(context).textTheme.labelMedium!.copyWith()),
                  TextSpan(
                      text: '3 .',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          ' The total PNL on all the winning trades should be minimum 150 USDT.\n',
                      style:
                          Theme.of(context).textTheme.labelMedium!.copyWith()),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Benefits',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 15,
                    color: AppColors.kPrimaryColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
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
                          ' Up to 20% profit ratio from followers realized profit in Expert Trades\n',
                      style:
                          Theme.of(context).textTheme.labelMedium!.copyWith()),
                  TextSpan(
                      text: '2 .',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          ' 30 \$referral bonus for activation of yearly subscription\n',
                      style:
                          Theme.of(context).textTheme.labelMedium!.copyWith()),
                  TextSpan(
                      text: '3 .',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          ' Up to 30% profit ratio from referred users daily realized profits\n',
                      style:
                          Theme.of(context).textTheme.labelMedium!.copyWith()),
                  TextSpan(
                      text: '4 .',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          ' 20\$ extra bonus to your referred user. It will be deducted in trading fee, but not withdraw-able\n',
                      style:
                          Theme.of(context).textTheme.labelMedium!.copyWith()),
                  TextSpan(
                      text: '5 .',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: ' 1% profit ratio in Signals Implementation\n',
                      style:
                          Theme.of(context).textTheme.labelMedium!.copyWith()),
                ]),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                  buttonText: 'Continue',
                  onTapped: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
