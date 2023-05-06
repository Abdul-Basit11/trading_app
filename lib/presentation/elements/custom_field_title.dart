import 'package:flutter/material.dart';

class CustomFieldTitle extends StatelessWidget {
  final String fieldText;

  const CustomFieldTitle({super.key, required this.fieldText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0,left: 15),
      child: Text(
        fieldText,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }
}
