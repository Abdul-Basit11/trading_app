import 'package:flutter/material.dart';

import '../../configuration/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTapped;
  final double? width;

  const CustomButton(
      {super.key,
      this.width = double.infinity,
      required this.buttonText,
      required this.onTapped,
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 47,
        width: width,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            onPressed: onTapped,
            child: Text(
              buttonText,style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600,color: Colors.white),
            )));
  }
}
