import 'package:flutter/material.dart';
import 'package:trading_app/presentation/elements/custom_button.dart';

import '../../../../../configuration/app_colors.dart';

class GoogleAuthenticatorViewBody extends StatelessWidget {
  const GoogleAuthenticatorViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Google Authenticator',
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
            children: [
              Center(
                child: Text(
                  'Set Up Two factor\nauthentication',
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'asset/image/qr_code.png',
                height: 170,
                width: 170,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.white.withOpacity(0.76)),
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
                      borderSide:
                          const BorderSide(color: AppColors.kPrimaryColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: AppColors.klightColor, width: 0)),
                  hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.white.withOpacity(0.4),
                      fontWeight: FontWeight.w400),
                  hintText: 'Enter 6 Code',
                  suffixIconConstraints:
                      const BoxConstraints(maxHeight: 30, maxWidth: 100),
                  suffixIcon: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffD9D9D9)),
                      child: Center(
                        child: Text(
                          '5FHJ7D8Dh6',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Use your google authentication app to scan this QR Code and enter the 6-digit code if you have problem with scanning the QR code ',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 70,
              ),
              CustomButton(buttonText: 'Verify Code', onTapped: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
