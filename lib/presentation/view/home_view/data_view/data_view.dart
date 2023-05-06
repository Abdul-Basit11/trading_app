import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';
import 'package:trading_app/navigation_helper/navigation_helper.dart';

import 'widget/add_signal.dart';
import 'widget/crypto_news.dart';
import 'widget/important_dates.dart';
import 'widget/signal_view.dart';

class DataViewBody extends StatefulWidget {
  const DataViewBody({Key? key}) : super(key: key);

  @override
  State<DataViewBody> createState() => _DataViewBodyState();
}

class _DataViewBodyState extends State<DataViewBody> {
  int initialIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: initialIndex,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            if (initialIndex == 1)
              IconButton(
                  onPressed: () {
                    NavigationHelper.pushRoute(context, const AddSignals());
                  },
                  icon: const Icon(
                    Icons.add,
                    color: AppColors.kWhiteColor,
                  )),
          ],
          title: Text(
            'Data',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              decoration: BoxDecoration(
                  color: AppColors.klightColor,
                  borderRadius: BorderRadius.circular(5)),
              width: double.infinity,
              height: 46,
              child: TabBar(
               onTap: (v){
                 setState(() {
                   initialIndex=v;
                 });
               },
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                isScrollable: true,
                indicator: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(5)),
                dividerColor: Colors.transparent,
                tabs: [
                  const Tab(
                    child: Text('\tCrypto News\t'),
                  ),
                  const Tab(
                    child: Text('\tSignals\t'),
                  ),
                  const Tab(
                    child: Text('\tImportant Dates\t'),
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
                    CryptoNews(),
                    Signals(),
                    ImportantDates(),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
