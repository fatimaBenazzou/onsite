import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onsite/Core/helpers/CustomBox.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/Features/Auth/presentation/view/widgets/text_area.dart';
import 'package:onsite/widgets/custom_button.dart';
import 'package:onsite/widgets/pick_file.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

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
          'Report a problem',
          style: AppFonts.h2Medium.copyWith(color: AppColors.primary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Describe the problem that you are facing',
              style: AppFonts.title1Bold.copyWith(color: AppColors.primary),
            ),
            verticalBox(16),
            TextArea(),
            verticalBox(24),
            Text(
              'Upload the problem that you are facing',
              style: AppFonts.title1Bold.copyWith(color: AppColors.primary),
            ),
            verticalBox(16),
            UploadFileContainer(),
            verticalBox(16),
            CustomElevatedButton(onPressed: (){}, text: 'Report')
          ],
        ),
      ),
    );
  }
}
