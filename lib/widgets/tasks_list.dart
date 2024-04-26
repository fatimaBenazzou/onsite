import 'package:flutter/material.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/Features/Home/Presentation/view/widget/ProgresWidget.dart';
import 'package:onsite/data/dummy_projects.dart';
import 'package:onsite/data/dummy_tasks.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: dummyTasks.map((task) {
        final project = dummyProjects
            .firstWhere((project) => project.id == task.projectId);
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
                          SizedBox(height: 4),
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 7.5,
                                backgroundColor: Colors.green,
                              ),
                              SizedBox(width: 8),
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
                      const Spacer(),
                      const ProgresWidget(mode: 'colored'),
                    ],
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Submit'),
                  )
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
