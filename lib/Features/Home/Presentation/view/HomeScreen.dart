import 'package:flutter/material.dart';
import 'package:onsite/Core/helpers/CustomBox.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/data/dummy_projects.dart';
import 'package:onsite/data/dummy_tasks.dart';
import 'package:onsite/widgets/task_item.dart';
import 'widget/CurrentTaskWidget.dart';
import 'widget/DateItemListView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey1,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                Text(
                  'Abderraouf',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                verticalBox(24),
                const CurrentTaskWidget(),
                verticalBox(24),
                const DateItemListView(),
                verticalBox(24),
                // TasksList()
                ...dummyTasks.map((task) {
                  final project = dummyProjects
                      .firstWhere((project) => project.id == task.projectId);
                  return TaskItem(project: project, task: task);
                }).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

