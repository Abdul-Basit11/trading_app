import 'package:flutter/material.dart';
import 'package:trading_app/presentation/elements/custom_button.dart';

import '../../../../../../configuration/app_colors.dart';

class NewAddress extends StatelessWidget {
  const NewAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Text(
          'New Address',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Name to Address',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white.withOpacity(0.76)),
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: AppColors.klightColor,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.kPrimaryColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: AppColors.klightColor, width: 0)),
            hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.white.withOpacity(0.4),
                fontWeight: FontWeight.w400),
            hintText: 'Enter name',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'USDT (TRC20)',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white.withOpacity(0.76)),
          decoration: InputDecoration(
            isDense: true,

            filled: true,
            fillColor: AppColors.klightColor,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.kPrimaryColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                const BorderSide(color: AppColors.klightColor, width: 0)),
            hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.white.withOpacity(0.4),
                fontWeight: FontWeight.w400),
            hintText: 'Add new Address',
          ),
        ),


const SizedBox(height: 20,),
        Text(
          'Code will be sent to Has***@gmail.com',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 5,),
        TextFormField(
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white.withOpacity(0.76)),
          decoration: InputDecoration(
            isDense: true,

            filled: true,
            fillColor: AppColors.klightColor,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                const BorderSide(color: AppColors.kPrimaryColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                    color: AppColors.klightColor, width: 0)),
            hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.white.withOpacity(0.4),
                fontWeight: FontWeight.w400),
            hintText: 'Email Verification Code',
            suffixIcon: GestureDetector(
              onTap: () {},
              child: Container(
                height: 20,
                width: 44,
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.kPrimaryColor),
                child: Center(
                  child: Text(
                    'Send',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(fontSize: 10),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 15,),
        CustomButton(buttonText: 'Save', onTapped: (){}),
      ],
    );
  }
}
