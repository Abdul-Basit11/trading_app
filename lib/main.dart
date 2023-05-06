import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:trading_app/configuration/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'presentation/view/auth_view/splash_view/layout/body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      theme: AppThemes.myTheme(context),
      debugShowCheckedModeBanner: false,
      home: SplashViewBody(),

    );
  }
}
