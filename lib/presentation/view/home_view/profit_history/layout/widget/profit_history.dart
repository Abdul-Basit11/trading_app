import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';
import 'package:trading_app/navigation_helper/navigation_helper.dart';

import '../../../lifetime_profit_view/lifetime_profit.dart';

class ProfitHostory extends StatelessWidget {
  const ProfitHostory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                              text: 'TOTAL PROFIT',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 16,
                                      color: AppColors.kWhiteColor,
                                      fontWeight: FontWeight.w600)),
                        ])),
                        Text('\$ 15,224.23',
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
                width: 12,
              ),
              Expanded(
                child: InkWell(
                  onTap: (){
NavigationHelper.pushRoute(context, LifeTimeProfit());
                  },
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
                                text: 'TOTAL PROFIT',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        fontSize: 16,
                                        color: AppColors.kWhiteColor,
                                        fontWeight: FontWeight.w600)),
                          ])),
                          Text('\$ 15,224.23',
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
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: AppColors.klightColor,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daily ROI',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  itemCount: 4,
                  primary: false,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                            child: Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.only(left: 12),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: AppColors.kBlackColor,
                              borderRadius: BorderRadius.circular(8)),
                          height: 38,
                          width: double.infinity,
                          child: Text(
                            '22, Jan 2022',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    color: AppColors.kWhiteColor,
                                    fontWeight: FontWeight.w400),
                          ),
                        )),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 38,
                          decoration: BoxDecoration(
                              color: AppColors.kSecondaryColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: FittedBox(
                                child: Text(
                              '+63.85%',
                              style: TextStyle(
                                  color: index.isEven
                                      ? AppColors.kredColor
                                      : AppColors.kPrimaryColor),
                            )),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
