import 'package:flutter/material.dart';

import '../../../../../../configuration/app_colors.dart';

class Tiles extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTapped;
  final Widget? child;

  const Tiles({super.key, required this.title, required this.imagePath,required this.onTapped,this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: AppColors.klightColor, borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        onTap: onTapped,
        trailing:child ,
        minLeadingWidth: 1,
        contentPadding: EdgeInsets.zero,
        leading: Image.asset(
          imagePath,
          height: 20,
          width: 20,
        ),
        title: Text(title, style: Theme.of(context).textTheme.titleSmall),
      ),
    );
  }
}
