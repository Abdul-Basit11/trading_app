import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'widget/main_view.dart';
import 'widget/menu_view.dart';



class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ZoomDrawer(
        angle: 0.0,
        mainScreen: MainView(),
        menuScreen: const MenuView(),
      ),
    );
  }
}
