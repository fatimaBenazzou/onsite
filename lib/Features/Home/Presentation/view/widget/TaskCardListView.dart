import 'package:flutter/material.dart';
import 'package:onsite/Features/Home/Presentation/view/widget/TaskCardWidget.dart';
import 'package:onsite/models/task.dart';
import 'package:onsite/screens/task_submission.dart';

class TaskCardListView extends StatelessWidget {
  final List<Task>? tasks;

  const TaskCardListView({this.tasks, super.key});

  @override
  Widget build(BuildContext context) {
    if (tasks == null) {
      return Center(
        child: Text('There is no tasks for the moment'),
      );
    }

    return SliverList.builder(
        itemCount: tasks!.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TaskSubmissionScreen(task: tasks![index])),
                );
              },
              child: TaskCardWidget(task: tasks![index]));
        });
  }
}
