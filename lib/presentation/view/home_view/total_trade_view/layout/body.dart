import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';

class TotalTradeViewBody extends StatelessWidget {
  const TotalTradeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = Theme.of(context).textTheme.titleSmall;
    final lable = Theme.of(context).textTheme.labelMedium;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Total Trades History',
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
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                  color: AppColors.klightColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ETH USDT',
                        style: title!.copyWith(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Date: 35 Jan 2023',
                        style: title!.copyWith(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'SELL',
                    style: title!
                        .copyWith(fontSize: 10, color: AppColors.kredColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Entry Price: 5150',
                    style: title!.copyWith(
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Close Price: 2000',
                        style: title!.copyWith(fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text(
                            'Realized PNL:',
                            style: lable!.copyWith(fontSize: 10),
                          ),
                          Text(
                            ' +581%',
                            style: title!.copyWith(
                                fontSize: 16, color: AppColors.kPrimaryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                  color: AppColors.klightColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ETH USDT',
                        style: title!.copyWith(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Date: 35 Jan 2023',
                        style: title!.copyWith(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Long',
                    style: title!
                        .copyWith(fontSize: 10, color: AppColors.kPrimaryColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Entry Price: 5150',
                    style: title!.copyWith(
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Close Price: 2000',
                        style: title!.copyWith(fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text(
                            'Realized PNL:',
                            style: lable!.copyWith(fontSize: 10),
                          ),
                          Text(
                            ' -100%',
                            style: title!.copyWith(
                                fontSize: 16, color: AppColors.kredColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
