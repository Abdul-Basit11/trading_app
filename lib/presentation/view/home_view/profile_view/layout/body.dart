import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';
import 'package:trading_app/navigation_helper/navigation_helper.dart';

import '../../../../../configuration/decider.dart';
import '../../account_security/account_security_view.dart';
import '../../deposit_address_view/deposit_address_view.dart';
import '../../expert_trade_view/expert_trade_view.dart';
import '../../setting_view/setting_view.dart';
import '../../user_detail/user_detail_view.dart';
import 'widget/expert_trade_dialog.dart';
import 'widget/tiles.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
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
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('asset/image/profileImage.png'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Emma Phillips',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 20),
                      ),
                      Row(
                        children: [
                          Text(
                            'United State of America',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    color: AppColors.kWhiteColor
                                        .withOpacity(0.67)),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 6,
                            width: 6,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.kPrimaryColor),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '01, Jan, 2023 ',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Next Billing Date',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontSize: 10,
                                  color:
                                      AppColors.kWhiteColor.withOpacity(0.67)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Expanded(
                      child: SizedBox(
                          height: 38,
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.kPrimaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              onPressed: (){
                                NavigationHelper.pushRoute(
                                    context, const DepositAddressView());},
                              child: Text(
                                'ACTIVATE',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600,color: Colors.white),
                              ))),
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(5)),
                child: ListTile(
                  onTap: () {},
                  trailing: Switch(
                      value: Decider.status,
                      onChanged: (v) {
                        setState(() {
                          Decider.status = v;
                        });
                      }),
                  minLeadingWidth: 1,
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset(
                    'asset/image/expertmode.png',
                    height: 20,
                    width: 20,
                  ),
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Expert Trade',
                          style: Theme.of(context).textTheme.titleSmall),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const ExpertTradeDialog();
                              });
                        },
                        child: Image.asset(
                          'asset/image/i.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                    ],
                  ),
                ),
              ),
              Decider.status
                  ? Tiles(
                      title: 'Expert Trade',
                      imagePath: 'asset/image/experttrade.png',
                      onTapped: () {
                        NavigationHelper.pushRoute(
                            context, const ExpertTradeView());
                      },
                    )
                  : const SizedBox(),
              Tiles(
                title: 'User Details',
                imagePath: 'asset/image/userdetail.png',
                onTapped: () {
                  NavigationHelper.pushRoute(context, const UserDetailView());
                },
              ),
              Tiles(
                title: 'Account Security',
                imagePath: 'asset/image/accountsecurity.png',
                onTapped: () {
                  NavigationHelper.pushRoute(
                      context, const AccountSecurityView());
                },
              ),
              Tiles(
                title: 'Settings',
                imagePath: 'asset/image/setting.png',
                onTapped: () {
                  NavigationHelper.pushRoute(context, const SettingView());
                },
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 47,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.kPrimaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'asset/image/logout.png',
                            height: 20,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Logout',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                          ),
                        ],
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
