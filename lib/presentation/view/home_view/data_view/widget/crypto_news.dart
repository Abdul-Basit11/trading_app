import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';

class CryptoNews extends StatelessWidget {
  const CryptoNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      primary: false,
      physics: const AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
          child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: AppColors.klightColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 37,
                        width: 40,
                        child: Image.asset('asset/image/bi.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'Bitcoin Surges Above \$21,000 Amid Optimism Around Inflation',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      )
                    ],
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Date 1/1/2023',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(fontSize: 10),
                      ))
                ],
              )),
        );
      },
    );
  }
}
