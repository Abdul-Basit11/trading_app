import 'package:flutter/material.dart';

import '../../../../../../configuration/app_colors.dart';
import '../../../../../elements/custom_button.dart';

class Changepassword extends StatelessWidget {
  const Changepassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: AppColors.klightColor,
          borderRadius: BorderRadius.circular(8)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Change Password',
                  style:
                  Theme.of(context).textTheme.titleSmall,
                ),
                const Icon(
                  Icons.close,
                  color: AppColors.kWhiteColor,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Verification will be sent to ABC***@gmail.com',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(fontSize: 10),
            ),
            const SizedBox(
              height: 10,
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
                hintText: 'Enter Code',
                prefixIcon: Image.asset('asset/image/code.png',scale: 4,),
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
            SizedBox(height: 5,),
            buildTextFormField(context,'Old password','lock'),
            SizedBox(height: 5,),

            buildTextFormField(context,'New password','lock'),
            SizedBox(height: 5,),

            buildTextFormField(context,'Confirm password','lock'),


            SizedBox(height:50,),
            CustomButton(buttonText: 'Update', onTapped: (){
              Navigator.pop(context);
            }),
          ],
        ),
      ),
    );
  }

  TextFormField buildTextFormField(BuildContext context,String name,String image) {
    return TextFormField(
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
            hintText: name,
            prefixIcon: Image.asset('asset/image/$image.png',scale: 4,),

          ),
        );
  }
}
