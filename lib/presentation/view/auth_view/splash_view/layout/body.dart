import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';

import '../../../../../navigation_helper/navigation_helper.dart';
import '../../signup_view/signup_view.dart';


class SplashViewBody extends StatefulWidget {
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      NavigationHelper.pushRoute(context, const SignUpView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/image/app_logo.png',height: 77,width: 73,fit: BoxFit.cover,),
            const SizedBox(height: 7,),
            Text(
              'Neon Pro',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.kPrimaryColor),
            ),

          ],
        ),
      ),
    );
  }
}
