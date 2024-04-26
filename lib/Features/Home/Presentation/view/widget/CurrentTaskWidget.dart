import 'package:flutter/material.dart';
import 'package:onsite/Core/index.dart';
import 'package:onsite/Features/Home/Presentation/view/widget/ProgresWidget.dart';


class CurrentTaskWidget extends StatelessWidget {
  const CurrentTaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      height: 120.h,
      width: context.screenWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Current Task',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(
                        color:
                            Theme.of(context).colorScheme.background),
              ),
              verticalBox(4),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 7.5,
                    backgroundColor: Colors.green,
                  ),
                  horizontalBox(8),
                  Text(
                    'First Project',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .background,
                        ),
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
          const ProgresWidget(),
        ],
      ),
    );
  }
}