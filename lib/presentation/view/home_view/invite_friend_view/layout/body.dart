import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';
import 'package:trading_app/presentation/elements/custom_button.dart';

import '../../../../elements/copy_button.dart';

class InviteFriendViewBody extends StatelessWidget {
  const InviteFriendViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = Theme.of(context).textTheme.titleSmall;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Invite friends',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Referral Code',
                style: title,
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2 5 8 7 6 3 ',
                      style: title,
                    ),
                    CopyButton(
                      onTapped: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(5)),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Referral Bonus Details',
                      style: title,
                    ),
                    const SizedBox(
                      height: 15,
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
                            ' Direct User 25\$ and 2% Profit Shares\n',
                            style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                fontSize: 11.4,
                                color: AppColors.kWhiteColor.withOpacity(0.67))),
                        TextSpan(
                            text: '2 .',
                            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                            ' Indirect User #1 (4%) and 0.5% Profit Shares\n',
                            style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                fontSize: 11.4,
                                color: AppColors.kWhiteColor.withOpacity(0.67))),
                        TextSpan(
                            text: '3 .',
                            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                            ' Indirect User #2 (2%) and 0.1% Profit Shares\n',
                            style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                            fontSize: 11.4,
                            color: AppColors.kWhiteColor.withOpacity(0.67))),


                      ]),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Invite friends and earns money when your referred user activate their account, you will receive the bonuses based on their account',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'https://ABC.com',
                      style: title,
                    ),
                    CopyButton(
                      onTapped: () {},
                    ),

                  ],
                ),
              ),const SizedBox(
                height: 30,
              ),
              CustomButton(buttonText: 'Invite', onTapped: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
