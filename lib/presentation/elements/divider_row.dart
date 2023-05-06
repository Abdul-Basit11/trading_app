import 'package:flutter/material.dart';


class DividerRow extends StatelessWidget {
  const DividerRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.white.withOpacity(0.4),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'OR',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.4)),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Divider(
            color: Colors.white.withOpacity(0.4),
          ),
        ),
      ],
    );
  }
}
