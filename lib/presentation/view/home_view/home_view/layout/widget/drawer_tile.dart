import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String menu;
  final String imagePath;

  const DrawerTile({super.key, required this.menu, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        menu,
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: Colors.white),
      ),
      leading: Image.asset(
        imagePath,
        height: 22,
        width: 22,
        fit: BoxFit.contain,
      ),
    );
  }
}
