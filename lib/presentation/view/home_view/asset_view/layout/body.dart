import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';
import 'package:trading_app/navigation_helper/navigation_helper.dart';

import '../../deposit_view/depost_view.dart';
import '../../with_draw_view/with_draw_view.dart';
import 'widget/percentage_dialog.dart.dart';

class AssetViewBody extends StatelessWidget {
  const AssetViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Assets',
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
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Balance:',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith( fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '51,202 USDT',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.kPrimaryColor),
                    ),
                    InkWell(
                      onTap: (){
                        showDialog(context: context, builder: (context){
                          return  BalanceDialog();
                        });
                      },
                      child: Image.asset(
                        'asset/image/i.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(

                      onTap: (){
                        NavigationHelper.pushRoute(context, DepositView());
                      },
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.klightColor),
                        child: Center(
                          child: Text(
                            'Deposit',
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: AppColors.kPrimaryColor
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        NavigationHelper.pushRoute(context, WithDrawView());},
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.klightColor),
                        child: Center(
                          child: Text(
                            'Withdraw',
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: AppColors.kredColor
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Deposit and Withdrawal history',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                height: 8,
              ),
              ListView.builder(
                primary: false,
                itemCount: 6,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.klightColor),
                      child: Row(
                        children: [
                          Text(
                            '12, Jan 2022',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '12:25:23 PM',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          const Spacer(),
                          Text(
                            'USDT',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontSize: 7,
                                    color: index.isOdd
                                        ? AppColors.kredColor
                                        : AppColors.kPrimaryColor),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '+152 ',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    color: index.isOdd
                                        ? AppColors.kredColor
                                        : AppColors.kPrimaryColor),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
