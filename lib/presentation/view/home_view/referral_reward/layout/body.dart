import 'package:flutter/material.dart';

import '../../../../../configuration/app_colors.dart';

class ReferralRewardViewBody extends StatelessWidget {
  const ReferralRewardViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Referral Rewards',
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
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                          color: AppColors.klightColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Today’s\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                          color: AppColors.kWhiteColor,
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: 'TOTAL EARNING',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                          fontSize: 16,
                                          color: AppColors.kWhiteColor,
                                          fontWeight: FontWeight.w600)),
                                ])),
                            Text('\$3,556.032',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                    fontSize: 16,
                                    color: AppColors.kPrimaryColor,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                          color: AppColors.klightColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'LIFETIME\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                          color: AppColors.kWhiteColor,
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: 'TOTAL EARNING',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                          fontSize: 16,
                                          color: AppColors.kWhiteColor,
                                          fontWeight: FontWeight.w600)),
                                ])),
                            Text('\$3,556.032',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                    fontSize: 16,
                                    color: AppColors.kPrimaryColor,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'asset/image/referred.png',
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Referred Users Stats',
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    buildPadding(context, 'Total Users', '2,350'),
                    buildPadding(context, 'Total Direct', '5,152'),
                    buildPadding(context, 'Total indirect', '235'),
                    buildPadding(context, 'Total Active Users', '2,520'),
                    buildPadding(context, 'Total Inactive Users', '2,542'),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'asset/image/overall.png',
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Overall Referred Users',
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    buildContainer(context),
                    buildContainer(context),
                    buildContainer(context),
                    buildContainer(context),
                  ],
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 6,top: 6),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      color: AppColors.kBlackColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('asset/image/profileImage.png'),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hakim Gul Bangash',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                'Active',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 6,
                                width: 6,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.kPrimaryColor),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Referred (350)',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
  }

  Padding buildPadding(BuildContext context, String title, String no) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Container(
            width: 64,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
                color: AppColors.kSecondaryColor,
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                no,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.kPrimaryColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
