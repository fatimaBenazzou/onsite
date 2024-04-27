import 'package:flutter/material.dart';
import 'package:onsite/Core/index.dart';
import 'package:onsite/Features/Home/Presentation/view/widget/CustomArc.dart';

class ProgresWidget extends StatelessWidget {
  final String mode;

  const ProgresWidget({
    this.mode = 'white',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 46.h,
          width: 46.w,
          child: CustomArc2(
            isWhite: mode == 'white',
          ),
        ),
        SizedBox(
          height: 46.h,
          width: 46.w,
          child: CustomArc(
            isWhite: mode == 'white',
          ),
        ),
        Text('75%',
            style: mode == 'white'
                ? Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).colorScheme.background)
                : Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.grey)),
      ],
    );
  }
}
