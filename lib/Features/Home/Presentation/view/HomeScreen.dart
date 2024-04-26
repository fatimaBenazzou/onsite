import 'package:flutter/material.dart';
import 'package:onsite/Core/helpers/CustomBox.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/data/dummy_projects.dart';
import 'package:onsite/data/dummy_tasks.dart';
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
