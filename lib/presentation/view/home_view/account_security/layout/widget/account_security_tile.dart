import 'package:flutter/material.dart';

import '../../../../../../configuration/app_colors.dart';


class AccountSecurityTile extends StatelessWidget {


  final String image;
  final String title;
  final VoidCallback? onTapped;

  const AccountSecurityTile({super.key, required this.image, required this.title,this.onTapped});


  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: AppColors.klightColor,
          borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        onTap: onTapped,
        contentPadding: EdgeInsets.zero,
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        leading: Image.asset(
          image,
          height: 24,
        ),
      ),
    );
  }

}
