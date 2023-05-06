import 'package:flutter/material.dart';

import '../../../../../configuration/app_colors.dart';

class ImportantDates extends StatelessWidget {
  const ImportantDates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildContainer(context),
            SizedBox(height: 15,),
            buildContainer(context),

          ],
        ),
      ),
    );
  }

  Container buildContainer(BuildContext context) {
    return Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: AppColors.klightColor,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Date: 22, Jan 2023',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 18
                ),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        padding:  EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                            color: AppColors.kBlackColor,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                          child: Text('Chines New year',style: Theme.of(context).textTheme.labelMedium!.copyWith(

                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        height: 40,
                        padding:  EdgeInsets.symmetric(horizontal: 6),

                        decoration: BoxDecoration(
                            color: AppColors.kBlackColor,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                          child: Text('Prediction: Dump',style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                TextFormField(
                  maxLines: 6,

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
                        borderSide:  BorderSide(color: AppColors.kPrimaryColor)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: AppColors.klightColor, width: 0)),
                    hintText: 'Reason',
                    hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white.withOpacity(0.4), fontWeight: FontWeight.w400),

                  ),
                ),
              ],
            ),
          );
  }
}
