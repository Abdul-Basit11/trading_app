import 'package:flutter/material.dart';
import 'package:trading_app/configuration/decider.dart';

import '../../../../../configuration/app_colors.dart';
import 'widget/profit_history.dart';

class ProfitHistoryViewBody extends StatelessWidget {
  const ProfitHistoryViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profits History',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              if(Decider.status)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(5)),
                width: double.infinity,
                height: 43,
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  indicator: BoxDecoration(
                      color: AppColors.kPrimaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  dividerColor: Colors.transparent,
                  tabs: const [
                    Tab(
                      text: ' Trades Profit ',
                    ),
                    Tab(
                      text: ' Signals Profit ',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              const Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                children: [
                  ProfitHostory(),
                  ProfitHostory(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
