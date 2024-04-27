import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onsite/Core/helpers/CustomBox.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/Features/Home/Presentation/view/widget/ProgresWidget.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Profile',
          style: AppFonts.h1Medium.copyWith(color: AppColors.primary),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.primary, width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/LOGO.png'),
                  ),
                  const SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nom de l\'employé',
                          style: AppFonts.title1Bold
                              .copyWith(color: AppColors.typoColor)),
                      const SizedBox(height: 8),
                      const Text(
                        'email@example.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.43,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.successState, width: 2),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProgresWidget(),
                      SizedBox(height: 8),
                      Text(
                        'TOTAL TASKS IMPROVED',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.successState,
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(width: 16),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.43,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.primary, width: 2),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '4.5 ⭐',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: AppColors.bgColor,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'YOUR RATING',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.bgColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Card(
              elevation: 2,
              color: Colors.white, // Fond blanc pour la ListTile
              margin: const EdgeInsets.all(8),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const Icon(CupertinoIcons.gear),
                      const SizedBox(width: 16),
                      Text(
                        'Settings',
                        style: AppFonts.h1Medium.copyWith(
                          color: AppColors.typoColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              elevation: 2,
              color: Colors.white, // Fond blanc pour la ListTile
              margin: const EdgeInsets.all(8),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const Icon(
                        CupertinoIcons.square_arrow_right,
                        color: AppColors.errorState,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'Logout',
                        style: AppFonts.h1Medium.copyWith(
                          color: AppColors.typoColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
