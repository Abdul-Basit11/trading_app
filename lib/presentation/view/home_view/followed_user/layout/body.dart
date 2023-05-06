import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';
import 'package:trading_app/presentation/view/home_view/join_expert_view/layout/widget/card_widget.dart';

class FollowedUserViewBody extends StatelessWidget {
  const FollowedUserViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Following Expert Traders List',
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
            children: const [
              CardWidget(
                  color: AppColors.kPrimaryColor,
                  accuracy: '100%',
                  totalPNL: '+300 USDT '),
              SizedBox(height: 12,),
              CardWidget(
                  color: AppColors.kredColor,
                  accuracy: '79%',
                  totalPNL: '-300 USDT '),
              SizedBox(height: 12,),
              CardWidget(
                  color: AppColors.kPrimaryColor,
                  accuracy: '100%',
                  totalPNL: '+300 USDT '),
              SizedBox(height: 12,),
              CardWidget(
                  color: AppColors.kredColor,
                  accuracy: '79%',
                  totalPNL: '-300 USDT '),
            ],
          ),
        ),
      ),
    );
  }
}
