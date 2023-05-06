import 'package:flutter/material.dart';
import 'package:trading_app/presentation/elements/custom_button.dart';

import '../../../../../configuration/app_colors.dart';

class WithDrawViewBody extends StatelessWidget {
  const WithDrawViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Set withdrawal PIN',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Set withdrawal PIN',
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
                      borderSide:
                          const BorderSide(color: AppColors.kPrimaryColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: AppColors.klightColor, width: 0)),
                  hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.white.withOpacity(0.4),
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Verification code will be send to abd@gmail.com',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 10),
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
                      borderSide:
                          const BorderSide(color: AppColors.kPrimaryColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: AppColors.klightColor, width: 0)),
                  hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.white.withOpacity(0.4),
                      fontWeight: FontWeight.w400),
                  hintText: 'Enter Code',
                  suffixIcon: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 20,
                      width: 35,
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
                              .copyWith(fontSize: 8),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomButton(buttonText: 'Save', onTapped: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
