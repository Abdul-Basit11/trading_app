import 'package:flutter/material.dart';

import '../../../../../configuration/app_colors.dart';

class PortfolioViewBody extends StatelessWidget {
  const PortfolioViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = Theme.of(context).textTheme.titleSmall;
    final lable = Theme.of(context).textTheme.labelMedium;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Afsheen khan profile',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.klightColor),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('asset/image/profileImage.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Afsheen khan',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Joined users: 20,000',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 7),
                          decoration: BoxDecoration(
                              color: AppColors.kBlackColor,
                              borderRadius: BorderRadius.circular(8)),
                          height: 40,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Total PNL\t ',
                                  style: Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  '+300 USDT ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(color: AppColors.kPrimaryColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: AppColors.kBlackColor,
                              borderRadius: BorderRadius.circular(8)),
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Accuracy\t ',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '94%',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: AppColors.kPrimaryColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  buildContainer(lable!, 'Total Trade', '500', () {}),
                  buildContainer(lable!, 'Gain Trade', '65', () {}),
                  buildContainer(lable, 'Loss Trade', '10', () {}),
                  buildContainer(lable, 'Active Order', '250', () {}),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.kWhiteColor),
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.klightColor),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Create Post',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const Icon(
                        Icons.add,
                        color: AppColors.kWhiteColor,
                      ),
                    ],
                  ),
                  TextFormField(
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: AppColors.kWhiteColor),
                    decoration: InputDecoration(
                        hintStyle: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: AppColors.kWhiteColor.withOpacity(0.67)),
                        hintText: 'Write a post....',
                        border: InputBorder.none),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.photo,
                      color: AppColors.kWhiteColor,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Posts',
                  style: title,
                ),
                Text(
                  'Pin Post',
                  style: title,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.klightColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Post (TEXT and IMAGE)',
                    style: title,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: AppColors.kWhiteColor.withOpacity(0.1),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Like',
                        style: title,
                      ),
                      Text(
                        'Share',
                        style: title,
                      ),
                      Text(
                        'Comments',
                        style: title,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.klightColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Post (TEXT and IMAGE)',
                    style: title,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: AppColors.kWhiteColor.withOpacity(0.1),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Like',
                        style: title,
                      ),
                      Text(
                        'Share',
                        style: title,
                      ),
                      Text(
                        'Comments',
                        style: title,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  GestureDetector buildContainer(
      TextStyle lable, String title, String price, VoidCallback onTapped) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 14),
        width: double.infinity,
        height: 39,
        decoration: BoxDecoration(
            color: AppColors.kBlackColor,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: lable,
            ),
            Text(
              price,
              style: lable!.copyWith(color: AppColors.kPrimaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
