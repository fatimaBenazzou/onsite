import 'package:flutter/material.dart';
import 'package:onsite/Features/Home/Presentation/view/widget/TaskCardWidget.dart';
import 'package:onsite/models/task.dart';

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

    return Expanded(
        child: ListView.builder(
            itemCount: tasks!.length,
            itemBuilder: (context, index) {
              print(context);
              return TaskCardWidget(tasks: tasks!, index: index);
            }));

  }
}
