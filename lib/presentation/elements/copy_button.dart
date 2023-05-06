import 'package:flutter/material.dart';

import '../../configuration/app_colors.dart';


class CopyButton extends StatelessWidget {

  final VoidCallback onTapped;

  const CopyButton({super.key, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    final title = Theme.of(context).textTheme.titleSmall;

    return  GestureDetector(
      onTap: onTapped,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.kPrimaryColor
        ),
        child: Center(
          child: Text('Copy',style: title,),
        ),
      ),
    );
  }
}
