import 'package:flutter/material.dart';
import 'package:trading_app/navigation_helper/navigation_helper.dart';
import 'package:trading_app/presentation/view/home_view/home_view/home_view.dart';
import 'package:trading_app/presentation/view/home_view/profile_view/profile_view.dart';

import '../../../../../configuration/app_colors.dart';
import '../../followed_user/followed_user_view.dart';
import '../../join_expert_profile_view/join_expert_profile_view.dart';
import 'widget/card_widget.dart';

class JoinExpertViewBody extends StatefulWidget {
  const JoinExpertViewBody({Key? key}) : super(key: key);

  @override
  State<JoinExpertViewBody> createState() => _JoinExpertViewBodyState();
}

class _JoinExpertViewBodyState extends State<JoinExpertViewBody> {
  final List filterList = [
    'Filter',
    'Total PNL',
    'Accuracy',
    'Following PNL',
    'Followers',
    'Top',
  ];
  String selectedFilter = 'Filter';
  @override
  Widget build(BuildContext context) {
    final title = Theme.of(context).textTheme.titleSmall;

    final lable = Theme.of(context).textTheme.labelMedium;


    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Join Expert Traders',
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      NavigationHelper.pushRoute(context, ProfileView());
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColors.klightColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          'Apply as Expert',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      NavigationHelper.pushRoute(context, FollowedUserView());
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColors.klightColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          'Following',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                height: 40,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    'Search Experts...',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      NavigationHelper.pushRoute(context, HomeView());
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColors.klightColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          'My Trades',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColors.klightColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: DropdownButton(

                        dropdownColor: AppColors.kBlackColor,
                        isDense: true,
                        value: selectedFilter,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.kWhiteColor,
                        ),
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 16),
                        underline: const SizedBox(),
                        onChanged: (String? va) {
                          setState(() {
                            selectedFilter = va!;
                          });
                        },
                        items: filterList
                            .map((e) => DropdownMenuItem<String>(
                                  child: Text(e),
                                  value: e,
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CardWidget(
                onTapped: () {
                  NavigationHelper.pushRoute(context, JoinExpertProfileView());
                },
                color: AppColors.kPrimaryColor,
                accuracy: '90%',
                totalPNL: '+300 USDT ',
              ),
              const SizedBox(
                height: 12,
              ),
              const CardWidget(
                color: AppColors.kPrimaryColor,
                accuracy: '90%',
                totalPNL: '+300 USDT ',
              ),
              const SizedBox(
                height: 12,
              ),
              const CardWidget(
                color: AppColors.kredColor,
                accuracy: '-50%',
                totalPNL: '-300 USDT ',
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
