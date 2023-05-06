import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';

class Gainer extends StatelessWidget {
  const Gainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lableTheme = Theme.of(context).textTheme.labelMedium;
    final titleTheme = Theme.of(context).textTheme.titleSmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Coin Name',
                style: lableTheme!.copyWith(color: AppColors.kWhiteColor),
              ),
              const Spacer(
                flex: 3,
              ),
              Text(
                'Last Price',
                style: lableTheme!.copyWith(color: AppColors.kWhiteColor),
              ),
              const Spacer(),
              Text(
                'Change(%)',
                style: lableTheme!.copyWith(color: AppColors.kWhiteColor),
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          buildRow(titleTheme, lableTheme, 'FTT', '10.15'),
          const SizedBox(
            height: 18,
          ),
          buildRow(titleTheme, lableTheme, 'ANC', '20.89'),
          const SizedBox(
            height: 18,
          ),
          buildRow(titleTheme, lableTheme, 'SRM', '0.012'),
          const SizedBox(
            height: 18,
          ),
          buildRow(titleTheme, lableTheme, 'TORN', '0.0784'),
          const SizedBox(
            height: 18,
          ),
          buildRow(titleTheme, lableTheme, 'FXS', '0.0071'),
          const SizedBox(
            height: 18,
          ),
          buildRow(titleTheme, lableTheme, 'MIR', '1.90'),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FittedBox(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                height: 38,
                decoration: const BoxDecoration(
                  color: AppColors.klightColor,
                ),
                child: Center(
                  child: FittedBox(
                      child: Text(
                    'View More',
                    style: lableTheme.copyWith(color: AppColors.kWhiteColor),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildRow(TextStyle? titleTheme, TextStyle lableTheme, String coinName,
      String price) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          coinName,
          style: titleTheme!.copyWith(fontWeight: FontWeight.w600),
        ),
        const Spacer(
          flex: 3,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              price,
              style: titleTheme!.copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              'RS 543.76',
              style: lableTheme!
                  .copyWith(fontSize: 8, color: AppColors.kWhiteColor),
            ),
          ],
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          height: 30,
          decoration: BoxDecoration(
              color: AppColors.kPrimaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: FittedBox(child: Text('+63.85%')),
          ),
        ),
      ],
    );
  }
}
