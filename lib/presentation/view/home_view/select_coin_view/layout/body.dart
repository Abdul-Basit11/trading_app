import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';
import 'package:trading_app/navigation_helper/navigation_helper.dart';

import '../../binance_view/binance_view.dart';
import '../../huobi_view/huobi_view.dart';
import '../../okx_view/okx_view.dart';

class SelectCoinViewBody extends StatelessWidget {
  const SelectCoinViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'API Binding',
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
              Text(
                'Select Binding',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: (){
                  NavigationHelper.pushRoute(context, BinanceView());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.klightColor,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Row(
                    children: [
                      Image.asset(
                        'asset/image/binance_coin.png',
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Binance',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  NavigationHelper.pushRoute(context, HuobiView());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.klightColor,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Row(
                    children: [
                      Image.asset(
                        'asset/image/huobi.png',
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        'HUOBI',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),

              GestureDetector(
                onTap: (){
                  NavigationHelper.pushRoute(context, OkxView());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.klightColor,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Row(
                    children: [
                      Image.asset(
                        'asset/image/ok.png',
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        'OKX',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
