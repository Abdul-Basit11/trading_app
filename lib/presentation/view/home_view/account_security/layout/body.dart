import 'package:flutter/material.dart';
import 'package:trading_app/navigation_helper/navigation_helper.dart';

import '../../../../../configuration/app_colors.dart';
import '../../../../elements/custom_button.dart';
import '../../biometric_pin_view/biometric_pin_view.dart';
import '../../google_authenticator_view/google_authtenticator_view.dart';
import '../../with_draw_pin/with_draw_pin_view.dart';
import 'widget/account_security_tile.dart';

class AccountSecurityViewBody extends StatelessWidget {
  const AccountSecurityViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account Security',
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
              AccountSecurityTile(
                onTapped: () {
                  NavigationHelper.pushRoute(context, const WithDrawPinView());
                },
                title: 'Withdrawal PIN',
                image: 'asset/image/pin.png',
              ),
              AccountSecurityTile(
                onTapped: () {
                  NavigationHelper.pushRoute(context, const BiometricPinView());
                },
                title: 'Biometric & PIN ',
                image: 'asset/image/biometric.png',
              ),
              AccountSecurityTile(
                onTapped: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            decoration: BoxDecoration(
                                color: AppColors.kBlackColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Center(
                                    child: Text(
                                      'Withdrawl Address',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                  ),
                                  const Divider(),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Select Address',
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  manageWithdrawlDialog(context),
                                  manageWithdrawlDialog(context),
                                  manageWithdrawlDialog(context),
                                  manageWithdrawlDialog(context),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  CustomButton(
                                      buttonText: 'Save',
                                      onTapped: () {
                                        Navigator.pop(context);
                                      }),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                title: 'Manage Withdrawal Addresses',
                image: 'asset/image/managewithdraw.png',
              ),
              const AccountSecurityTile(
                title: '2FA(Email)',
                image: 'asset/image/code.png',
              ),
              AccountSecurityTile(
                onTapped: () {
                  NavigationHelper.pushRoute(
                      context, const GoogleAuthenticatorView());
                },
                title: 'Google Authenticator',
                image: 'asset/image/googleauthenticator.png',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container manageWithdrawlDialog(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.klightColor,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jhony Walker',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text('jaosifh asifo',
                      style: Theme.of(context).textTheme.titleSmall),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: AppColors.kredColor,
                    size: 25,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
