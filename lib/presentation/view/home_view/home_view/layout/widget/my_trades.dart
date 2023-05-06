import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';

class MyTrades extends StatelessWidget {
  const MyTrades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lableTheme = Theme.of(context).textTheme.labelMedium;
    return Column(
      children: [
        buildContainer(context, lableTheme),
        const SizedBox(
          height: 10,
        ),
        buildContainer(context, lableTheme),
      ],
    );
  }

  Container buildContainer(BuildContext context, TextStyle? lableTheme) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.klightColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'asset/image/s.png',
                height: 19,
                width: 18,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'ETHUSDT Perpetual',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              Text(
                'Cross 10X',
                style: lableTheme!.copyWith(color: Colors.white,fontSize: 13),
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
                  const SizedBox(
                    height: 10,
                  ),
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
              const Spacer(),
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
                  const SizedBox(
                    height: 10,
                  ),
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
              const Spacer(),
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
                  const SizedBox(
                    height: 10,
                  ),
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
          const SizedBox(
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
}
