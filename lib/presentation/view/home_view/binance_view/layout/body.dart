import 'package:flutter/material.dart';

import '../../../../../configuration/app_colors.dart';
import '../../../../elements/copy_button.dart';
import '../../../../elements/custom_button.dart';

class BinanceViewBody extends StatefulWidget {
  const BinanceViewBody({Key? key}) : super(key: key);

  @override
  State<BinanceViewBody> createState() => _BinanceViewBodyState();
}

class _BinanceViewBodyState extends State<BinanceViewBody> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    final title = Theme.of(context).textTheme.titleSmall;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Binance API Binding',
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
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Precautions',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          'View more instructions',
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: AppColors.kPrimaryColor,
                                  ),
                        ),
                      ],
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
                            ' Please confirm that the API permission Enable Spot & Futures Trading has been checked.\n',
                            style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                height: 1.5,
                                color: AppColors.kWhiteColor.withOpacity(0.67))),
                        TextSpan(
                            text: '2 .',
                            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                            ' Please enter the correct API, please do not enter special characters.\n',
                            style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(


                                height: 1.5,
                                color: AppColors.kWhiteColor.withOpacity(0.67))),



                      ]),
                    ),

                  ],
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
                      'IP Group Binding',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'For security purpose, Huobi Exchange recommends binding the server IP address when creating the API.For users who need to bind the IP address, click “Edit restrictions” in the upper right corner after the API is created, and check “Restrict access to trusted IPs only”.Click the copy button to copy the IP group to the input box and click OK. Finally, click save in the upper right corner',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: AppColors.kWhiteColor.withOpacity(0.67),
                          height: 2),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColors.kSecondaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '8. 121. 152. 213. 235. 25. 25. 1....',
                            style: title!.copyWith(fontSize: 13),
                          ),
                          CopyButton(
                            onTapped: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'API Key',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color:
                                      AppColors.kWhiteColor.withOpacity(0.67),
                                  fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Expanded(
                            child: TextFormField(
                          style: Theme.of(context).textTheme.labelMedium,
                          decoration: const InputDecoration(
                              hintText: 'Please enter API key',
                              border: InputBorder.none),
                        )),
                      ],
                    ),
                    Divider(
                      color: AppColors.kWhiteColor.withOpacity(0.67),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Secret Key',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color:
                                      AppColors.kWhiteColor.withOpacity(0.67),
                                  fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Expanded(
                            child: TextFormField(
                          style: Theme.of(context).textTheme.labelMedium,
                          decoration: const InputDecoration(
                              hintText: 'Please ente Secret Key',
                              border: InputBorder.none),
                        )),
                      ],
                    ),
                    Divider(
                      color: AppColors.kWhiteColor.withOpacity(0.67),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Verification code',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color:
                                      AppColors.kWhiteColor.withOpacity(0.67),
                                  fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: Theme.of(context).textTheme.labelMedium,
                          decoration: const InputDecoration(
                              hintText: 'Please enter the code',
                              border: InputBorder.none),
                        )),
                        const SizedBox(
                          width: 6,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.kPrimaryColor),
                            child: Center(
                              child: Text(
                                'Send',
                                style: title,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      activeColor: AppColors.klightColor,
                      checkColor: AppColors.kPrimaryColor,
                      value: isTrue,
                      onChanged: (value) {
                        setState(() {
                          isTrue = value!;
                        });
                      }),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'I have carefully read',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color:
                                    AppColors.kWhiteColor.withOpacity(0.67))),
                    TextSpan(
                        text: ' the risk Notice',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: AppColors.kPrimaryColor,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.kPrimaryColor))
                  ])),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(buttonText: 'Bind', onTapped: () {}),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
