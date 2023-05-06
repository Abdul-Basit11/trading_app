import 'package:flutter/material.dart';
import 'package:trading_app/configuration/app_colors.dart';

class SystemInformation extends StatelessWidget {
  const SystemInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(Icons.notifications,color: AppColors.kPrimaryColor,),
              SizedBox(width: 5,),
              Text(
                'System',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600,color: AppColors.kPrimaryColor),
              )
            ],
          ),
          ListView.builder(
            itemCount: 3,
            physics: NeverScrollableScrollPhysics(),
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: AppColors.klightColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('asset/image/profileImage.png'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'March SoulLacoma',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet consectetur. Eget pellentesque cras vivamus tempor.',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                fontWeight: FontWeight.w400,
                                color:
                                AppColors.kWhiteColor.withOpacity(0.67)),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '2 hours ago',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color:
                                AppColors.kWhiteColor.withOpacity(0.3)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
