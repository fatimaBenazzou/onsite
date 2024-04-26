import 'package:flutter/material.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/models/project.dart';
import 'package:onsite/models/task.dart';


class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.project,
    required this.task,
  });

  final Project project;
  final Task task;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
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
                        task.name,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: AppColors.typoColor),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 7.5,
                            backgroundColor: Colors.green,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            project.name,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                 
                ],
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}