import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';

import '../../../../../navigation_helper/navigation_helper.dart';
import '../../active_order_view/active_order_view.dart';
import '../../total_trade_view/total_trade_view.dart';

class JoinExpertProfileViewBody extends StatelessWidget {
  const JoinExpertProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = Theme.of(context).textTheme.titleSmall;
    final lable = Theme.of(context).textTheme.labelMedium;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Amir khan Swati',
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 28,
                          backgroundImage:
                              AssetImage('asset/image/profileImage.png'),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            Text(
                              'Amir khan Swati',
                              style: title,
                            ),
                            Text(
                              'Joined Users: 20,000',
                              style: lable,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 47,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: AppColors.kPrimaryColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                'Follow',
                                style: lable,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 47,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: AppColors.kBlackColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                'Trade Now',
                                style: lable,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 40,
                          decoration: BoxDecoration(
                              color: AppColors.kBlackColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: FittedBox(
                            child: Row(
                              children: [
                                Text(
                                  'Total PNL',
                                  style: lable,
                                ),
                                Text(
                                  '+300 USDT ',
                                  style: lable!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.kPrimaryColor),
                                ),
                              ],
                            ),
                          ),
                        )),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 40,
                          decoration: BoxDecoration(
                              color: AppColors.kBlackColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Accuracy  ',
                                style: lable,
                              ),
                              Text(
                                '+100%',
                                style: lable!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.kPrimaryColor),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    buildContainer(lable, 'Total Trade', '500', () {
                      NavigationHelper.pushRoute(context, const TotalTradeView());
                    }),
                    buildContainer(lable, 'Gain Trade', '65', () {}),
                    buildContainer(lable, 'Loss Trade', '10', () {}),
                    buildContainer(lable, 'Active Order', '250', () {
                      NavigationHelper.pushRoute(context, const ActiveOrderview());
                    }),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Posts',
                    style: title,
                  ),
                  Text(
                    'Pin Post',
                    style: title,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Post (TEXT and IMAGE)',
                      style: title,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Divider(
                      color: AppColors.kWhiteColor.withOpacity(0.1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Like',
                          style: title,
                        ),
                        Text(
                          'Share',
                          style: title,
                        ),
                        Text(
                          'Comments',
                          style: title,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector buildContainer(
      TextStyle lable, String title, String price, VoidCallback onTapped) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 14),
        width: double.infinity,
        height: 39,
        decoration: BoxDecoration(
            color: AppColors.kBlackColor,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: lable,
            ),
            Text(
              price,
              style: lable!.copyWith(color: AppColors.kPrimaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
