import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trading_app/configuration/app_colors.dart';
import 'package:trading_app/presentation/view/home_view/home_view/layout/widget/gainer.dart';
import 'package:trading_app/presentation/view/home_view/home_view/layout/widget/loser.dart';
import 'package:trading_app/presentation/view/home_view/home_view/layout/widget/my_trades.dart';

import '../../../../../../navigation_helper/navigation_helper.dart';
import '../../../../../elements/custom_icon_button.dart';
import '../../../asset_view/asset_view.dart';
import '../../../invite_friend_view/invite_friend_view.dart';
import '../../../join_expert_view/join_expert_view.dart';
import '../../../notification_view/notification_view.dart';
import '../../../profile_view/profile_view.dart';
import '../../../profit_history/profit_history_view.dart';
import '../../../referral_reward/referral_reward_view.dart';
import '../../../select_coin_view/select_coin_view.dart';
import 'option_container.dart';

class MainView extends StatelessWidget {
  List<String> images = [
    'asset/image/cards.png',
    'asset/image/cards.png',
    'asset/image/cards.png',
  ];

  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            CustomIconButton(
              onPressed: () {
                NavigationHelper.pushRoute(context, const NotificationView());
              },
              iconData: Icons.notifications,
            ),
            CustomIconButton(
              onPressed: () {
                NavigationHelper.pushRoute(context, const ProfileView());
              },
              iconData: Icons.account_circle_sharp,
            ),
          ],
          leading: CustomIconButton(
            onPressed: () {
              ZoomDrawer.of(context)!.toggle();
            },
            iconData: Icons.menu,
          ),
          title: Text(
            'Home',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            SizedBox(
                width: double.infinity,
                height: 138,
                child: PageView.builder(
                    controller: _pageController,
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                                image: AssetImage('asset/image/cards.png'))),
                      );
                    })),
            const SizedBox(height: 10,),

            Center(
              child: SmoothPageIndicator(controller: _pageController, count: 4,effect:  const WormEffect(
                  spacing:  8.0,
                  radius:  8.0,
                  dotWidth:  8.0,
                  dotHeight:  8.0,

                  dotColor:  AppColors.klightColor,
                  activeDotColor:  AppColors.kPrimaryColor
              ), ),
            ),
            const SizedBox(height: 15,),

            Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.klightColor,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OptionContainer(
                          onTapped: () {
                            NavigationHelper.pushRoute(
                                context, const SelectCoinView());
                          },
                          title: 'API Binding',
                          imagePath: 'apibinding',
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        OptionContainer(
                          onTapped: () {
                            NavigationHelper.pushRoute(
                                context, const ProfitHistoryView());
                          },
                          title: 'Profits History',
                          imagePath: 'profit',
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        OptionContainer(
                          onTapped: () {
                            NavigationHelper.pushRoute(
                                context, const ReferralRewardView());
                          },
                          title: 'Referral Rewards',
                          imagePath: 'rewards',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OptionContainer(
                          onTapped: () {
                            NavigationHelper.pushRoute(context, const AssetView());
                          },
                          title: 'Asstes',
                          imagePath: 'asstes',
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        OptionContainer(
                          onTapped: () {
                            NavigationHelper.pushRoute(
                                context, const InviteFriendView());
                          },
                          title: 'Invite Friends',
                          imagePath: 'friends',
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        OptionContainer(
                          onTapped: () {
                            NavigationHelper.pushRoute(
                                context, const JoinExpertView());
                          },
                          title: 'Expert Traders',
                          imagePath: 'traders',
                        ),
                      ],
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: AppColors.klightColor,
                  borderRadius: BorderRadius.circular(5)),
              width: double.infinity,
              height: 46,
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                isScrollable: true,
                indicator: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(5)),
                dividerColor: Colors.transparent,
                tabs: const [
                  Tab(
                    text: ' My Trades ',
                  ),
                  Tab(
                    text: ' Gainer ',
                  ),
                  Tab(
                    text: ' Loser ',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child:  const TabBarView(

                physics: NeverScrollableScrollPhysics(),
                children: [
                  MyTrades(),
                  Gainer(),
                  Loser(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
