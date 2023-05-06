import 'package:flutter/material.dart';

import '../../../../../../configuration/app_colors.dart';

class OptionContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTapped;
  OptionContainer({super.key, required this.imagePath, required this.title,required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTapped,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.26,
            padding: EdgeInsets.all(15),
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.kSecondaryColor,
            ),
            child: Image.asset(
              'asset/image/$imagePath.png',
              height: 36,
              width: 36,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
        )
      ],
    );
  }
}
