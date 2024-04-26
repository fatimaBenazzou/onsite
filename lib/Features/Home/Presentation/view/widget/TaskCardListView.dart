import 'package:flutter/material.dart';
import 'package:onsite/Features/Home/Presentation/view/widget/TaskCardWidget.dart';

class TaskCardListView extends StatelessWidget {
  const TaskCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) {
      return const TaskCardWidget();
    }));
  }
}
