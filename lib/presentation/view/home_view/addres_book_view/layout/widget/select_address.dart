import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';

class SelectAddress extends StatelessWidget {
  const SelectAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'Select Address',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.klightColor,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jhony Walker',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10,),
                Text(
                  'asdbhsjdhcshscuxdhsdjbhhsdg',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kWhiteColor.withOpacity(0.67)),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),

        InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.klightColor,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jhony Walker',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10,),
                Text(
                  'asdbhsjdhcshscuxdhsdjbhhsdg',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kWhiteColor.withOpacity(0.67)),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.klightColor,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jhony Walker',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10,),
                Text(
                  'asdbhsjdhcshscuxdhsdjbhhsdg',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kWhiteColor.withOpacity(0.67)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
