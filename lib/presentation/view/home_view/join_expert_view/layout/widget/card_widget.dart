import 'package:flutter/material.dart';

import '../../../../../../configuration/app_colors.dart';

class CardWidget extends StatelessWidget {
  final Color color;
  final String accuracy;
  final String totalPNL;
  final VoidCallback? onTapped;

  const CardWidget(
      {super.key,
        this.onTapped,
      required this.color,
      required this.accuracy,
      required this.totalPNL});

  @override
  Widget build(BuildContext context) {
    final title = Theme.of(context).textTheme.titleSmall;
    final lable = Theme.of(context).textTheme.labelMedium;

    return GestureDetector(
      onTap: onTapped,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.klightColor, borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('asset/image/profileImage.png'),
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    Text(
                      'Amir khan Swati',
                      style: title,
                    ),
                    Text(
                      'Joined Users: 20,000',
                      style: lable,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.kBlackColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          'Total PNL',
                          style: lable,
                        ),
                        Text(
                          totalPNL,
                          style: lable!.copyWith(
                              fontWeight: FontWeight.w600, color: color),
                        ),
                      ],
                    ),
                  ),
                )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.kBlackColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Accuracy  ',
                        style: lable,
                      ),
                      Text(
                        accuracy,
                        style: lable!
                            .copyWith(fontWeight: FontWeight.w600, color: color),
                      ),
                    ],
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
