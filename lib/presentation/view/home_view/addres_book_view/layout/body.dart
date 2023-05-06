import 'package:flutter/material.dart';

import '../../../../../configuration/app_colors.dart';
import 'widget/new_address.dart';
import 'widget/select_address.dart';

class AddressBookViewBody extends StatefulWidget {
  const AddressBookViewBody({Key? key}) : super(key: key);

  @override
  State<AddressBookViewBody> createState() => _AddressBookViewBodyState();
}

class _AddressBookViewBodyState extends State<AddressBookViewBody> {
  String name = 'New Address';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Withdrawal Address ',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),

                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildBoxes(title: 'New Address', context: context),
                      buildBoxes(title: 'Select Address', context: context),
                    ],
                  ),
                ),

                const Divider(
                  color: AppColors.kWhiteColor,
                ),
                name == 'New Address' ? const NewAddress() : const SelectAddress(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBoxes({required BuildContext context, required String title}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          name = title;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        height: 40,
        decoration: BoxDecoration(
            color:
                title == name ? AppColors.kPrimaryColor : AppColors.klightColor,
            borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18),
        )),
      ),
    );
  }
}
