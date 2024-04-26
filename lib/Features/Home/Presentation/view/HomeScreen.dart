import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onsite/Core/helpers/CustomBox.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/Features/Home/Presentation/view/widget/ProgresWidget.dart';

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
              SizedBox(
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
                                  'Current Task',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(color: AppColors.typoColor),
                                ),
                                verticalBox(4),
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 7.5,
                                      backgroundColor: Colors.green,
                                    ),
                                    horizontalBox(8),
                                    Text(
                                      'First Project',
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
                        verticalBox(24),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Submit'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
