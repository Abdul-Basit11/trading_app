import 'package:flutter/material.dart';

import '../../../../../../configuration/app_colors.dart';
import '../../../../../elements/custom_button.dart';


class PercentageDialog extends StatelessWidget {
  const PercentageDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding:
        const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15),
        decoration: BoxDecoration(
            color: AppColors.klightColor,
            borderRadius:
            BorderRadius.circular(8)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            mainAxisSize:
            MainAxisSize.min,
            children: [
              Text(
                'Maximum 10%',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType:
                TextInputType.number,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(
                    color: Colors
                        .white
                        .withOpacity(
                        0.76)),
                decoration:
                InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: AppColors
                      .kBlackColor,
                  border:
                  OutlineInputBorder(
                    borderSide:
                    BorderSide.none,
                    borderRadius:
                    BorderRadius
                        .circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius
                          .circular(
                          8),
                      borderSide:  BorderSide(
                          color: AppColors
                              .kPrimaryColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius
                          .circular(
                          8),
                      borderSide:  BorderSide(
                          color: AppColors
                              .klightColor,
                          width: 0)),
                  hintStyle: Theme.of(
                      context)
                      .textTheme
                      .titleSmall!
                      .copyWith(
                      color: Colors
                          .white
                          .withOpacity(
                          0.4),
                      fontWeight:
                      FontWeight
                          .w400),
                  hintText: 'Percentage',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  buttonText: 'Update',
                  onTapped: () {
                    Navigator.pop(
                        context);
                  }),
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
