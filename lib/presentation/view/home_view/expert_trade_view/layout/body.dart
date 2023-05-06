import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:trading_app/configuration/app_colors.dart';
import 'package:trading_app/navigation_helper/navigation_helper.dart';

import '../../crypto_news/crypto_news_view.dart';
import '../../data_view/data_view.dart';
import '../../portfolio_view/portfolio_view.dart';
import 'widget/percentage_dialog.dart';

class ExpertTradeViewBody extends StatefulWidget {
  @override
  State<ExpertTradeViewBody> createState() => _ExpertTradeViewBodyState();
}

class _ExpertTradeViewBodyState extends State<ExpertTradeViewBody> {
  String name = 'Positions(3)';
  bool isActive = false;
  final List coinList = [
    'Cross',
    'Isolated',
  ];
  String selctedCoin = 'Cross';
  final List countsList = [
    '75x',
    '50x',
  ];
  String selectedcounts = '75x';

  int number = 0;

  final List limitList = [
    'Limit',
    'Market',
  ];
  String sex = 'Male';
  String selectedLimitList = 'Limit';
  double _currentSliderValue = 5;
  String bTC = 'BTC';
  bool isProfitOrLoss = true;
  @override
  Widget build(BuildContext context) {
    final lableTheme = Theme.of(context).textTheme.labelMedium;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Expert Trade',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                NavigationHelper.pushRoute(context, const DataViewBody());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                height: 36,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text(
                  'Data',
                  style: Theme.of(context).textTheme.labelMedium,
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                NavigationHelper.pushRoute(context, const PortfolioView());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 36,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text(
                  'Portfolio',
                  style: Theme.of(context).textTheme.labelMedium,
                )),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.kWhiteColor,
                      size: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        NavigationHelper.pushRoute(
                            context, const CryptoNewsView());
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'BTCUSDT',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Perpetual',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '-0.12%',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 18, color: AppColors.kredColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: AppColors.kBlackColor,
                                      borderRadius: BorderRadius.circular(6)),
                                  child: DropdownButton<String>(
                                    dropdownColor: AppColors.kBlackColor,
                                    isDense: true,
                                    value: selctedCoin,
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                      color: AppColors.kWhiteColor,
                                    ),
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(fontSize: 16),
                                    underline: const SizedBox(),
                                    onChanged: (String? value) {
                                      setState(() {
                                        selctedCoin = value!;
                                      });
                                    },
                                    items: coinList
                                        .map<DropdownMenuItem<String>>((value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return const PercentageDialog();
                                        });
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                          color: AppColors.kBlackColor,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            Text(
                                              '75X',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall!
                                                  .copyWith(fontSize: 16),
                                            ),
                                            const Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: 35,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                  color: AppColors.kBlackColor,
                                  borderRadius: BorderRadius.circular(5)),
                              child: TabBar(
                                labelColor: Colors.white,
                                unselectedLabelColor: Colors.white,
                                labelPadding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                isScrollable: true,
                                indicator: BoxDecoration(
                                    color: AppColors.kPrimaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                                dividerColor: Colors.transparent,
                                tabs: const [
                                  Tab(
                                    text: '\t\t\tOpen  ',
                                    //child: Text('Open',style: Theme.of(context).textTheme.labelMedium,),
                                  ),
                                  Tab(
                                    text: '\t\t\tClose  ',
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Available Funds',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            color: AppColors.kPrimaryColor),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '424.21 USDT',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            color: AppColors.kPrimaryColor),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: AppColors.kBlackColor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: DropdownButton<String>(
                                  dropdownColor: AppColors.kBlackColor,
                                  isDense: true,
                                  value: selectedLimitList,
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: AppColors.kWhiteColor,
                                  ),
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(fontSize: 16),
                                  underline: const SizedBox(),
                                  onChanged: (String? value) {
                                    setState(() {
                                      selectedLimitList = value!;
                                    });
                                  },
                                  items: limitList
                                      .map<DropdownMenuItem<String>>((value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            /// first increment textfield
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: AppColors.kBlackColor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          number = number + 1;
                                        });
                                      },
                                      icon: const Icon(
                                        CupertinoIcons.minus,
                                        color: AppColors.kPrimaryColor,
                                        size: 20,
                                      )),
                                  Expanded(
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              color: Colors.white
                                                  .withOpacity(0.76)),
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10),
                                        border: InputBorder.none,
                                        hintText: '100',
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                                color: Colors.white
                                                    .withOpacity(0.4),
                                                fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          number = number + 1;
                                        });
                                      },
                                      icon: const Icon(
                                        CupertinoIcons.add,
                                        color: AppColors.kPrimaryColor,
                                        size: 20,
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                buildSelectableButton('BTC'),
                                const SizedBox(
                                  width: 5,
                                ),
                                buildSelectableButton('USDT'),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: AppColors.kBlackColor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        CupertinoIcons.minus,
                                        color: AppColors.kPrimaryColor,
                                        size: 20,
                                      )),
                                  FittedBox(
                                    child: Text(
                                      bTC == 'BTC'
                                          ? 'Amount (BTC)'
                                          : 'Amount (USDT)',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(fontSize: 13),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        CupertinoIcons.add,
                                        color: AppColors.kPrimaryColor,
                                        size: 20,
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            FittedBox(
                              child: Container(
                                width: 222,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          "0%",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Spacer(),
                                        Text(
                                          "5%",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Transform.rotate(
                                          angle: 95,
                                          child: Container(
                                            height: 12,
                                            width: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                        FittedBox(
                                          child: SfSlider(
                                            value: _currentSliderValue,
                                            activeColor: Colors.white,
                                            inactiveColor: Colors.white,
                                            min: 0.0,
                                            max: 5,
                                            onChanged: (val) {
                                              print(_currentSliderValue);
                                              setState(() {
                                                _currentSliderValue = val;
                                              });
                                            },
                                            thumbIcon: Transform.rotate(
                                              angle: 95,
                                              child: Container(
                                                color: AppColors.kWhiteColor,
                                                child: Transform.rotate(
                                                  angle: 99.8,
                                                  child: Center(
                                                    child: Text(
                                                        "${_currentSliderValue.toStringAsFixed(1)}",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .labelMedium!
                                                            .copyWith(
                                                                fontSize: 10,
                                                                color: Colors
                                                                    .black)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Transform.rotate(
                                          angle: 95,
                                          child: Container(
                                            height: 12,
                                            width: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isProfitOrLoss = !isProfitOrLoss;
                                    });
                                  },
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: AppColors.kPrimaryColor,
                                        ),
                                        shape: BoxShape.circle),
                                    child: isProfitOrLoss
                                        ? Center(
                                            child: Container(
                                              height: 20,
                                              width: 20,
                                              decoration: const BoxDecoration(
                                                  color:
                                                      AppColors.kPrimaryColor,
                                                  shape: BoxShape.circle),
                                            ),
                                          )
                                        : SizedBox(),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'TP/SL',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            isProfitOrLoss
                                ? SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.52,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width*0.25,

                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: AppColors.kBlackColor,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: TextFormField(
                                            keyboardType:
                                                TextInputType.number,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall!
                                                .copyWith(
                                                    color: Colors.white
                                                        .withOpacity(0.76)),
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              contentPadding:
                                                  const EdgeInsets
                                                          .symmetric(
                                                      vertical: 10),
                                              border: InputBorder.none,
                                              hintText: 'Take Profit',
                                              hintStyle: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall!
                                                  .copyWith(
                                                      color: Colors.white
                                                          .withOpacity(0.4),
                                                      fontWeight:
                                                          FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width*0.25,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: AppColors.kBlackColor,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: TextFormField(
                                            keyboardType:
                                                TextInputType.number,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall!
                                                .copyWith(
                                                    color: Colors.white
                                                        .withOpacity(0.76)),
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              contentPadding:
                                                  const EdgeInsets
                                                          .symmetric(
                                                      vertical: 10),
                                              border: InputBorder.none,
                                              hintText: 'Stop Less',
                                              hintStyle: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall!
                                                  .copyWith(
                                                      color: Colors.white
                                                          .withOpacity(0.4),
                                                      fontWeight:
                                                          FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox(),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Max Open\nCost',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text('15.654 BTC\n0.00 USDT',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.5,
                              decoration: BoxDecoration(
                                  color: AppColors.kPrimaryColor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  'Open Long',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Max Open\nCost',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text('15.654 BTC\n0.00 USDT',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.5,
                              decoration: BoxDecoration(
                                  color: AppColors.kredColor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  'Open Short',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const Spacer(),

                        /// /// /// /// //// //////////////////////////////////////////

                        Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Funding / Countdown',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(fontSize: 8),
                                ),
                                const SizedBox(
                                  height: 2,
                                  width: 100,
                                  child: Divider(
                                    color: AppColors.kWhiteColor,
                                  ),
                                ),
                                Text(
                                  '0.001% / 01:13:56',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(fontSize: 10),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Price\n(USDT)',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                          fontSize: 8,
                                          color: AppColors.kWhiteColor
                                              .withOpacity(0.6)),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Amount\n(USDT)',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                          fontSize: 8,
                                          color: AppColors.kWhiteColor
                                              .withOpacity(0.6)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            for (int i = 0; i <= 7; i++)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '157.254',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              fontSize: 10,
                                              color: AppColors.kredColor),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      '1.305',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              fontSize: 10,
                                              color: AppColors.kWhiteColor
                                                  .withOpacity(0.6)),
                                    ),
                                  ],
                                ),
                              ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              '20150.54',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: AppColors.kPrimaryColor),
                            ),
                            Text(
                              '20150.54',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontSize: 10),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            for (int i = 0; i <= 5; i++)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '157.254',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              fontSize: 10,
                                              color: AppColors.kPrimaryColor),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      '1.305',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              fontSize: 10,
                                              color: AppColors.kWhiteColor
                                                  .withOpacity(0.6)),
                                    ),
                                  ],
                                ),
                              ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: AppColors.kBlackColor,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Text(
                                        '0.01',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(fontSize: 16),
                                      ),
                                      const Icon(
                                        Icons.arrow_drop_down,
                                        color: AppColors.kWhiteColor,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: AppColors.kBlackColor,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Image.asset(
                                      'asset/image/q.png',
                                      scale: 3,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        buildText(context, 'Open Orders (1)'),
                        const SizedBox(
                          width: 10,
                        ),
                        buildText(context, 'Positions(3)'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    buildContainer(context, lableTheme),
                    const SizedBox(
                      height: 10,
                    ),
                    buildContainer(context, lableTheme),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(BuildContext context, TextStyle? lableTheme) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.kBlackColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'asset/image/s.png',
                height: 18,
                width: 17,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'ETHUSDT Perpetual',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              Text(
                'Cross 10X',
                style: lableTheme!.copyWith(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                'Unrealized PNL(USDT)',
                style: lableTheme.copyWith(
                    decorationColor: Colors.white.withOpacity(0.7),
                    decoration: TextDecoration.underline,
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              Text(
                'ROE',
                style: lableTheme.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                '15.23',
                style: lableTheme.copyWith(
                    color: AppColors.kPrimaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              Text(
                '+7.25%',
                style: lableTheme.copyWith(
                    color: AppColors.kPrimaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Size(USDT)',
                    style: lableTheme.copyWith(
                        decorationColor: Colors.white.withOpacity(0.7),
                        decoration: TextDecoration.underline,
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '1984.32',
                    style: lableTheme.copyWith(
                        color: AppColors.kWhiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Entry Price',
                    style: lableTheme.copyWith(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '1336.00',
                    style: lableTheme.copyWith(
                        color: AppColors.kWhiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Margin(USDT)',
                    style: lableTheme.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '198.24',
                    style: lableTheme.copyWith(
                        color: AppColors.kWhiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Mark Price',
                    style: lableTheme.copyWith(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '1325.35',
                    style: lableTheme.copyWith(
                        color: AppColors.kWhiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Risk',
                    style: lableTheme.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '2.77%',
                    style: lableTheme.copyWith(
                        color: AppColors.kPrimaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Liq.Price',
                    style: lableTheme.copyWith(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '12026.25',
                    style: lableTheme.copyWith(
                        color: AppColors.kWhiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'TP/SL',
                style: lableTheme.copyWith(color: AppColors.kWhiteColor),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                '(152/30)',
                style: lableTheme.copyWith(color: AppColors.kWhiteColor),
              ),
            ],
          )
        ],
      ),
    );
  }















  Widget buildText(
    BuildContext context,
    String title,
  ) {
    return GestureDetector(
      onTap: () {
        name = title;
        setState(() {});
      },
      child: Column(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          name == title
              ? const SizedBox(
                  height: 1,
                  width: 90,
                  child: Divider(
                    thickness: 1,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  Widget buildSelectableButton(String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          bTC = title;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.26,
        height: 35,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: bTC == title
                ? AppColors.kBlackColor
                : AppColors.kSecondaryColor,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            title,
            style:
                Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14),
          ),
        ),
      ),
    );
  }
}
