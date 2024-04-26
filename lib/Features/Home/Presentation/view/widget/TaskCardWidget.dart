import 'package:flutter/material.dart';
import 'package:onsite/Core/index.dart';

import 'ProgresWidget.dart';

class TaskCardWidget extends StatelessWidget {
  const TaskCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      width: context.screenWidth,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          border: Border.all(
              width: 0.5,
              color: Theme.of(context).colorScheme.tertiary.withOpacity(0.32)),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Task',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground),
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
                            .copyWith(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const ProgresWidget(mode: 'colored'),
            ],
          ),
          verticalBox(24),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).colorScheme.primary),
            ),
            onPressed: () {},
            child: Text(
              'Submit',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Theme.of(context).colorScheme.background),
            ),
          )
        ],
      ),
    );
  }
}
