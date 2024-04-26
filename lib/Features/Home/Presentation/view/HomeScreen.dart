import 'package:flutter/material.dart';
import 'package:onsite/Core/index.dart';
import 'package:onsite/Features/Home/Presentation/view/widget/TaskCardWidget.dart';
import 'widget/CurrentTaskWidget.dart';
import 'widget/DateItemListView.dart';
import 'widget/SwitcherPartWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SafeArea(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
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
                          .copyWith(
                              color: Theme.of(context).colorScheme.primary),
                    ),
                    verticalBox(24),
                    const CurrentTaskWidget(),
                    verticalBox(24),
                    const DateItemListView(),
                    verticalBox(24),
                    Container(
                      height: 45.h,
                      width: context.screenWidth,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SwitcherPartWidget(
                            isSelected: currentIndex == 0,
                            text: 'Pending',
                            onTap: () {
                              setState(() {
                                currentIndex = 0;
                              });
                            },
                          ),
                          SwitcherPartWidget(
                              isSelected: currentIndex == 1,
                              text: 'Done',
                              onTap: () {
                                setState(() {
                                  currentIndex = 1;
                                });
                              })
                        ],
                      ),
                    ),
                    verticalBox(16),
                  ],
                ),
              ),
              SliverList.builder(
                  itemCount: 12,
                  itemBuilder: (ctx, index) {
                    return const TaskCardWidget();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
