import 'package:flutter/material.dart';

import '../../../../../../configuration/app_colors.dart';
import '../../../../../elements/custom_button.dart';

class BalanceDialog extends StatelessWidget {
  const BalanceDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
        decoration: BoxDecoration(
            color: AppColors.klightColor,
            borderRadius: BorderRadius.circular(12)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Balance',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet nulla dapibus, sagittis velit ac, aliquet nisi. Phasellus nec',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                  buttonText: 'Ok',
                  onTapped: () {
                    Navigator.pop(context);
                  }),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
