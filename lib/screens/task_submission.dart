import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onsite/Core/helpers/CustomBox.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/Features/Home/Presentation/view/widget/TaskCardWidget.dart';
import 'package:onsite/models/task.dart';
import 'package:onsite/screens/report.dart';
import 'package:onsite/widgets/custom_button.dart';
import 'package:onsite/widgets/pick_file.dart';

class TaskSubmissionScreen extends StatelessWidget {
  final Task task;

  const TaskSubmissionScreen({required this.task, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton.filled(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              CupertinoIcons.left_chevron,
              color: AppColors.primary,
            )),
        title: Text(
          task.name,
          style: AppFonts.h2Medium.copyWith(color: AppColors.primary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.primary, width: 2),
                ),
              ),
            verticalBox(24),
            Text('Task Submission',
                style:
                    AppFonts.title1Bold.copyWith(color: AppColors.typoColor)),
            verticalBox(24),
            UploadFileContainer(),
            verticalBox(24),
            CustomElevatedButton(onPressed: () {}, text: 'Submit'),
            Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ReportScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Report a problem',
                      style: TextStyle(color: AppColors.errorState),
                    )))
          ],
        ),
      ),
    );
  }
}
