import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';

class Signals extends StatelessWidget {
  const Signals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: AppColors.klightColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        color: AppColors.kSecondaryColor,
                        child: Text(
                          'BTC',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        color: AppColors.kPrimaryColor,
                        child: Text(
                          'LONG',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            'Date 1/1/2023',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer(context, 'Entry: 20000 USDT', Colors.white),
                      buildContainer(context, 'Leverage: 5%', Colors.white),
                      buildContainer(context, 'FundS size: 5%', Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer(context, 'Validity: 4 hours', Colors.white),
                      buildContainer(context, 'TP:21574', AppColors.kPrimaryColor),
                      buildContainer(context, 'SL:21574', AppColors.kredColor),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    maxLines: 4,

                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.kBlackColor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: AppColors.kPrimaryColor)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: AppColors.klightColor, width: 0)),
                      hintText: 'Reason',
                      hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.white.withOpacity(0.4), fontWeight: FontWeight.w400),

                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColors.kBlackColor,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(
                      child: Text('Implement (50)',style: Theme.of(context).textTheme.titleSmall,),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: AppColors.klightColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        color: AppColors.kSecondaryColor,
                        child: Text(
                          'BTC',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        color: AppColors.kPrimaryColor,
                        child: Text(
                          'LONG',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            'Date 1/1/2023',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildContainer(context, 'Entry: 20000 USDT', Colors.white),
                      buildContainer(context, 'Leverage: 5%', Colors.white),
                      buildContainer(context, 'FundS size: 5%', Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildContainer(context, 'Validity: 4 hours', Colors.white),
                      buildContainer(
                          context, 'TP:21574', AppColors.kPrimaryColor),
                      buildContainer(context, 'SL:21574', AppColors.kredColor),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    maxLines: 4,

                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.kBlackColor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: AppColors.kPrimaryColor)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: AppColors.klightColor, width: 0)),
                      hintText: 'Reason',
                      hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.white.withOpacity(0.4), fontWeight: FontWeight.w400),

                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: AppColors.kBlackColor,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(
                      child: Text('Implement (50)',style: Theme.of(context).textTheme.titleSmall,),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(BuildContext context, String title, Color color) {
    return Container(
      width: MediaQuery.of(context).size.width*0.27,
      height: 40,
      // margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5, ),
      decoration: BoxDecoration(
          color: AppColors.kBlackColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: FittedBox(
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(fontSize: 10, color: color,fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
