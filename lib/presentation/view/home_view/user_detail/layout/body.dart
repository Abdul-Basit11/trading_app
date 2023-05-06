import 'package:csc_picker/model/select_status_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';
import 'package:trading_app/presentation/elements/custom_button.dart';

import 'widget/change_email.dart';
import 'widget/change_password.dart';
import 'widget/tiles.dart';

class UserDetailViewBody extends StatefulWidget {
  const UserDetailViewBody({Key? key}) : super(key: key);

  @override
  State<UserDetailViewBody> createState() => _UserDetailViewBodyState();
}

class _UserDetailViewBodyState extends State<UserDetailViewBody> {
  late Country country;
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User Details',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            UserDetailTiles(
              imagePath: 'asset/image/userdetail.png',
              title: 'User Name',
              onTapped: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
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
                                      'Change user name',
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
                                const SizedBox(height: 5,),
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
                                    prefixIcon: Image.asset('asset/image/userdetail.png',scale: 4,),

                                  ),
                                ),
                                const SizedBox(height:50,),
                                CustomButton(buttonText: 'Update', onTapped: (){
                                  Navigator.pop(context);
                                }),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: AppColors.klightColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(

                horizontalTitleGap: 1,
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  'asset/image/pakistan.png',
                  height: 20,
                ),
                title: Text(
                  'Pakistan',
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
            UserDetailTiles(
              imagePath: 'asset/image/lock.png',
              title: 'Change Password',
              onTapped: () {
                showDialog(context: context, builder: (context){
                  return const Dialog(
                    child: Changepassword(),
                  );
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            UserDetailTiles(
              imagePath: 'asset/image/email.png',
              title: 'Change Email',
              onTapped: () {

                showDialog(context: context, builder: (context){
                  return const SingleChildScrollView(
                    child: Dialog(
                      child: ChangeEmail(),
                    ),
                  );
                });


              },
            ),
          ],
        ),
      ),
    );
  }
}
