import 'package:flutter/material.dart';

import '../../../../../../configuration/app_colors.dart';

class UserDetailTiles extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTapped;

  const UserDetailTiles({super.key, required this.title, required this.imagePath, required this.onTapped});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.klightColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        onTap: onTapped,
        horizontalTitleGap: 1,
        contentPadding: EdgeInsets.zero,
        leading: Image.asset(
          imagePath,
          height: 20,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
