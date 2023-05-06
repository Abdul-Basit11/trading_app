import 'package:flutter/material.dart';


class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('asset/image/app_logo.png',height: 50,width: 48,fit: BoxFit.cover,);
  }
}
