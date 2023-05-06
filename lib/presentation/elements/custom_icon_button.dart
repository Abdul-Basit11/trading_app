import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {

  final VoidCallback onPressed;
  final IconData iconData;

  const CustomIconButton({super.key, required this.onPressed, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(iconData,color: Colors.white,));
  }
}
