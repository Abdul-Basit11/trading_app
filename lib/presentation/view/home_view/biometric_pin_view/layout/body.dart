import 'package:flutter/material.dart';
import 'package:pin_plus_keyboard/package/controllers/pin_input_controller.dart';
import 'package:pin_plus_keyboard/pin_plus_keyboard.dart';

import '../../../../../configuration/app_colors.dart';

class BiometricPinViewBody extends StatefulWidget {
  const BiometricPinViewBody({Key? key}) : super(key: key);

  @override
  State<BiometricPinViewBody> createState() => _BiometricPinViewBodyState();
}

class _BiometricPinViewBodyState extends State<BiometricPinViewBody> {
  PinInputController pinInputController = PinInputController(length: 6);
  bool isOn=false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Biometric & PIN ',
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(5)),
                child: ListTile(
                  onTap: () {},
                  trailing: Switch(
                    value: isOn,
                    onChanged: (v) {
                      setState(() {
                        isOn=v;
                      });
                    },
                  ),
                  minLeadingWidth: 1,
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset(
                    'asset/image/biometric.png',
                    height: 20,
                    width: 20,
                  ),
                  title: Text('Set Biometric',
                      style: Theme.of(context).textTheme.titleSmall),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Set Your Pin Number',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              // const SizedBox(height: 5,),
              // TextFormField(
              //   obscureText: true,
              //   keyboardType: TextInputType.number,
              //   textAlign: TextAlign.center,
              //   style: Theme.of(context)
              //       .textTheme
              //       .titleSmall!
              //       .copyWith(color: Colors.white.withOpacity(0.76)),
              //   decoration: InputDecoration(
              //     isDense: true,
              //     filled: true,
              //     fillColor: AppColors.klightColor,
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide.none,
              //       borderRadius: BorderRadius.circular(8),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(8),
              //         borderSide:
              //             const BorderSide(color: AppColors.kPrimaryColor)),
              //     enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(8),
              //         borderSide: const BorderSide(
              //             color: AppColors.klightColor, width: 0)),
              //     hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
              //         color: Colors.white.withOpacity(0.4),
              //         fontWeight: FontWeight.w400),
              //   ),
              // ),

              SizedBox(height: 20,),
              PinPlusKeyBoardPackage(
                 inputHeight:50,inputWidth: 40,
                keyboardBtnSize: 50,
                cancelColor: AppColors.klightColor,
                keyboardFontSize: 20,
                focusColor: AppColors.kPrimaryColor,
                inputTextColor: AppColors.kWhiteColor,
                btnBorderThickness: 0,
                keyboardButtonShape: KeyboardButtonShape.circular,
                inputShape: InputShape.defaultShape,
                keyboardMaxWidth: 70,
                //inputHasBorder: true,
                inputFillColor: AppColors.klightColor,
                inputElevation: 0,
                buttonFillColor: AppColors.klightColor,
                btnTextColor: Colors.white,
                spacing: size.height * 0.06,
                pinInputController: pinInputController,

                onSubmit: () {
                  /// ignore: avoid_print
                  print("Text is : " + pinInputController.text);
                },
                keyboardFontFamily: '',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
