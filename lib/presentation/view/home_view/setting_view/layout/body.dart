import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';

class SettingViewBody extends StatefulWidget {
  const SettingViewBody({Key? key}) : super(key: key);

  @override
  State<SettingViewBody> createState() => _SettingViewBodyState();
}

class _SettingViewBodyState extends State<SettingViewBody> {
  // final List currencyList = [
  //   'PKR',
  //   'USD',
  //   'AUR',
  //   'EUR',
  // ];
  final List<String> currenciesList=[
    'US Dollar (USD)',
    'Indian Rupees (INR)',
    'Russian Ruble (RUB)',
    'Nigerian Naira (NGN)',
    'Brazilian Real (BRL)',
    'Ukraine Hrynia (UAH)',
    'Pakistani Rupees (PKR)',
    'Indonesia Rupiah (Rp)',
    'Vietnamese Dong (VND)',
    'Kenyan Shilling (KES)',
    'Philippine Peso (PHP)',
    'South African Rand (ZAR)',
    'Bangladesh Taka (BDT)',
    'Thai Baht (THB)',
    'United Kingdoms (GBP)',
    'Colombian Peso (COP)',
    'Canadian Dollar (CAD)',
    'Australian Dollar (AUD)',
    'Emirati Dirham (AED)',
  ];
  String selectedCurrency = 'US Dollar (USD)';
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
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
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.klightColor),
                child: Row(
                  children: [
                    Image.asset(
                      'asset/image/curr.png',
                      height: 28,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: DropdownButton(
                          isDense: true,
                          dropdownColor: AppColors.kBlackColor,
                          iconEnabledColor: AppColors.kWhiteColor,
                          style: Theme.of(context).textTheme.titleSmall,
                          value: selectedCurrency,
                          underline: const SizedBox(),
                          isExpanded: true,
                          items: currenciesList
                              .map((e) => DropdownMenuItem<String>(
                                    child: Text(e),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (String? v) {
                            setState(() {
                              selectedCurrency = v!;
                            });
                          }),
                    ),
                  ],
                ),
              ),

              // ListTile(
              //   contentPadding: EdgeInsets.zero,
              //   leading: Image.asset(
              //     'asset/image/curr.png',
              //     height: 28,
              //   ),
              //   title: Text(
              //     'Select Currency',
              //     style: Theme.of(context).textTheme.titleSmall,
              //   ),
              //   trailing: const Icon(
              //     Icons.arrow_drop_down,
              //     color: AppColors.kWhiteColor,
              //   ),
              // ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.klightColor),
                child: ListTile(
                  trailing: Switch(
                    value: isOn,
                    onChanged: (v) {
                      setState(() {
                        isOn = v;
                      });
                    },
                  ),
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.notifications,
                    color: AppColors.kWhiteColor,
                  ),
                  title: Text(
                    'Notification',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.klightColor),
                child: ListTile(
                  trailing: Text(
                    '200 MB',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset(
                    'asset/image/clearcaches.png',
                    height: 28,
                  ),
                  title: Text(
                    'Clear Caches',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.klightColor),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset(
                    'asset/image/language.png',
                    height: 28,
                  ),
                  title: Text(
                    'Language',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  trailing: const Icon(
                    Icons.arrow_drop_down,
                    color: AppColors.kWhiteColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.klightColor),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset(
                    'asset/image/app.png',
                    height: 28,
                  ),
                  title: Text(
                    'App Version',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  trailing: Text(
                    '5.4.0',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
