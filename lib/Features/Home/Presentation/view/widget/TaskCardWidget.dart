import 'package:flutter/material.dart';
import 'package:onsite/Core/index.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/data/dummy_projects.dart';
import 'package:onsite/models/task.dart';

import 'ProgresWidget.dart';

class TaskCardWidget extends StatelessWidget {
  final Task task;

  const TaskCardWidget({
    required this.task,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final projectName = dummyProjects
        .firstWhere((project) => project.id == task.projectId)
        .name;
    final priority = task.priorityAsString;

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                task.name,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              Container(
                decoration: BoxDecoration(
                  color: task.getColorForStatus(task.status),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: AppColors.bgColor,
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                      task.statusAsString,
                      style: const TextStyle(
                        color: AppColors.bgColor,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          verticalBox(8),
          Text(
            projectName,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.grey),
          ),

          verticalBox(16),
          Row(
            children: [
              CircleAvatar(
                radius: 7.5,
                backgroundColor: task.getColorForPriority(task.priority),
              ),
              horizontalBox(8),
              Text(
                priority,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.grey),
              )
            ],
          ),
          // verticalBox(24),
          // Text(
          //     '${task.startTime} - ${task.deadline}',
          //     style: Theme.of(context)
          //         .textTheme
          //         .bodyMedium!
          //         .copyWith(color: Colors.grey),
          //   ),
        ],
      ),
    );
  }
}
