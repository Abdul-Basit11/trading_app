import 'package:flutter/material.dart';
import 'package:trading_app/presentation/elements/app_logo.dart';

import '../../../../../../configuration/app_colors.dart';
import 'drawer_tile.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      const AppLogo(),
                      Text(
                        'Neon Pro',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: AppColors.kPrimaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: AppColors.klightColor,
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              const DrawerTile(
                imagePath: 'asset/image/rateus.png',
                menu: 'Rate us',
              ),
              const DrawerTile(
                imagePath: 'asset/image/share.png',
                menu: 'Share app',
              ),
              const DrawerTile(
                imagePath: 'asset/image/privacy.png',
                menu: 'Privacy and policy',
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: AppColors.klightColor,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Social Content',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              const DrawerTile(
                imagePath: 'asset/image/facebook.png',
                menu: 'Facebook page',
              ),
              const DrawerTile(
                imagePath: 'asset/image/twitter.png',
                menu: 'Twitter',
              ),
              const DrawerTile(
                imagePath: 'asset/image/insta.png',
                menu: 'Instagram',
              ),
              const DrawerTile(
                imagePath: 'asset/image/web.png',
                menu: 'Website',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
