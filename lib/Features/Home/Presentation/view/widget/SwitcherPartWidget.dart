import 'package:flutter/material.dart';
import 'package:onsite/Core/index.dart';

class SwitcherPartWidget extends StatelessWidget {
  const SwitcherPartWidget(
      {super.key,
      required this.isSelected,
      required this.onTap,
      required this.text});
  final bool isSelected;
  final Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        alignment: Alignment.center,
        height: 45.h,
        width: context.screenWidth * 0.43,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.background,
        ),
        duration: const Duration(milliseconds: 450),
        curve: Curves.bounceInOut,
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: isSelected
                  ? Theme.of(context).colorScheme.background
                  : Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
