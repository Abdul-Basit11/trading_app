import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';

import 'wiaget/order_message.dart';
import 'wiaget/system_information.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Notification',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: const [
              TabBar(
                splashBorderRadius: BorderRadius.zero,
                isScrollable: true,
                indicatorColor: AppColors.kWhiteColor,
                labelColor: AppColors.kPrimaryColor,
                unselectedLabelColor: AppColors.kPrimaryColor,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: Text('ORDER MESSAGES'),
                  ),
                  Tab(
                    text: 'System Information',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    OrderMessage(),
                    SystemInformation(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
