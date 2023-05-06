import 'package:flutter/material.dart';

import '../../../../../configuration/app_colors.dart';

class ActiveOrderViewBody extends StatelessWidget {
  const ActiveOrderViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = Theme.of(context).textTheme.titleSmall;
    final lable = Theme.of(context).textTheme.labelMedium;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Active Trades',
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
            children: [
              ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
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
                              style:
                                  title!.copyWith(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Date: 35 Jan 2023',
                              style: title!.copyWith(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        index.isOdd
                            ? Text(
                                'Sell',
                                style: title!.copyWith(
                                    fontSize: 10, color: AppColors.kredColor),
                              )
                            : Text(
                                'Buy',
                                style: title!.copyWith(
                                    fontSize: 10,
                                    color: AppColors.kPrimaryColor),
                              ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Entry Price: 5150',
                              style: title!.copyWith(
                                fontSize: 10,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'UnRealized PNL:',
                                  style: lable!.copyWith(fontSize: 10),
                                ),
                                Text(
                                  ' 100%',
                                  style: title!.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),

                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
