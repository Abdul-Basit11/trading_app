import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../configuration/app_colors.dart';

class VerificationTextField extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      width: 57,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextFormField(
          onChanged: (v){
            if(v.length==1){
              FocusScope.of(context).nextFocus();
            }
          },
          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white.withOpacity(0.76)),

          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
          fillColor: AppColors.klightColor,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.kPrimaryColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.klightColor, width: 0)),
            isDense: true,
            hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.white.withOpacity(0.4),
                fontWeight: FontWeight.w400),
          ),
        )

      ),
    );
  }
}
