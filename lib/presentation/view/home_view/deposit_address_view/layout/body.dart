import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';
import 'package:trading_app/presentation/elements/custom_button.dart';


class DepositAddressViewBody extends StatelessWidget {
  const DepositAddressViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Deposit Address',style: Theme.of(context).textTheme.titleLarge,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.klightColor,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Network',style: Theme.of(context).textTheme.labelMedium,),
                        const SizedBox(width: 10,),
                        Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: AppColors.kPrimaryColor,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text('TRC20',style: Theme.of(context).textTheme.labelMedium,)),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: AppColors.kBlackColor,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Wallet Address',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                  fontSize: 18
                                ),),
                                Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: AppColors.kPrimaryColor,
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                    child: Text('Copy',style: Theme.of(context).textTheme.labelMedium,)),
                              ],
                            ),
                          SizedBox(height: 5,),
                          Text('asdbhsjdhcshscuxdhsdjbhhsdg',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 17,
                            color: AppColors.kWhiteColor.withOpacity(0.67)
                          ),),

                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: AppColors.kBlackColor,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Text('Amount: 150 USDT',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 18,

                      ),),
                    ),


                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Column(
                  children: [
                    Text('.Scan the QR Code for fast transaction',style: Theme.of(context).textTheme.titleSmall,),
                    const SizedBox(height: 10,),
                    Image.asset('asset/image/qr_code.png',height: 120,)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              CustomButton(buttonText: 'Done', onTapped: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
