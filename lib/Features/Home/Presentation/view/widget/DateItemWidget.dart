import 'package:flutter/material.dart';
import 'package:onsite/Core/index.dart';

class DateItemWidget extends StatelessWidget {
  const DateItemWidget({
    super.key,
    required this.isSelected,
    required this.index,
  });
  final bool isSelected;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 44.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${21 + index}',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Theme.of(context).colorScheme.tertiary),
          ),
          Text(
            'Apr',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Theme.of(context).colorScheme.tertiary),
          ),
        ],
      ),
    );
  }
}
