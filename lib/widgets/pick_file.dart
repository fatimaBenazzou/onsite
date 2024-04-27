import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onsite/Core/helpers/CustomBox.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/Features/Auth/presentation/view/widgets/custom_hashed_container.dart';

Future<void> pickFile(BuildContext context) async {
  final result = await FilePicker.platform.pickFiles();
  if (result != null) {
    // Utilise le fichier comme nécessaire
    print('Path: ${result.files.single.path}');
  } else {
    // L'utilisateur a annulé le pick
  }
}

class UploadFileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pickFile(context),
      child: DashedBorderContainer(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 40),
            child: Column(
              children: [
                const Icon(CupertinoIcons.arrow_up_doc, size: 50, color: AppColors.primary),
                verticalBox(16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Click to Upload',
                      style: TextStyle(color: AppColors.primary),
                    ),
                    Text(
                      ' or drag and drop',
                      style: TextStyle(color: AppColors.typoColor),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
