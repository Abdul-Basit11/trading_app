import 'package:flutter/material.dart';
import 'package:trading_app/presentation/elements/custom_button.dart';
import 'package:trading_app/presentation/elements/custom_text_field.dart';

import '../../../../../configuration/app_colors.dart';
import '../../../../../navigation_helper/navigation_helper.dart';
import '../../addres_book_view/address_book_view.dart';

class WithDrawViewBody extends StatelessWidget {
  const WithDrawViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final label = Theme.of(context).textTheme.labelMedium;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Withdraw',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text('Only USDT (TRC20) Withdrawals Accepted', style: label),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Enter Amount',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'You receive:',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: AppColors.kWhiteColor.withOpacity(0.67))),
                TextSpan(
                    text: '  97.24 USDT',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: AppColors.kPrimaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.kPrimaryColor))
              ])),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    NavigationHelper.pushRoute(context, const AddressBookView());
                  },
                  child: Text(
                    'Address Book',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(fontSize: 10, color: AppColors.kPrimaryColor),
                  ),
                ),
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
                  hintText: 'Enter or paste the address',
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
                          'Paste',
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
              const SizedBox(
                height: 10,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Available funds: ',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: AppColors.kWhiteColor.withOpacity(0.67))),
                TextSpan(
                    text: '  \$15,542.02',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.kPrimaryColor,
                        ))
              ])),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Enter Withdrawal PIN',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 10,
              ),
              FittedBox(
                child: Text(
                  'The verification code will be sent to Abc***@gmail.com',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.white.withOpacity(0.76)),
                decoration: InputDecoration(isDense: true,
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
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Note:',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.kWhiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: '1 .',
                            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                            ' Transaction: Fee 3%\n',
                            style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(height: 2)),
                        TextSpan(
                            text: '2 .',
                            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                            ' Minimum withdrawal: 10 USDT\n',
                            style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(height: 2)),
                        TextSpan(
                            text: '3 .',
                            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                            ' Arrival time:Few minutes(In some cases max 24 hours)\n',
                            style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(height: 2)),
                        TextSpan(
                            text: '4 .',
                            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                            ' In case of invalid withdrawal address, we will not be responsible. Double check your withdrawal address\n',
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(height: 2)),

                      ]),
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomButton(buttonText: 'Confirm', onTapped: () {}),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
