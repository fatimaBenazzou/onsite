import 'package:flutter/material.dart';
import 'package:onsite/Core/index.dart';
import 'package:onsite/Features/Home/Presentation/view/widget/CurrentTaskWidget.dart';
import 'package:onsite/Features/Home/Presentation/view/widget/DateItemListView.dart';
import 'package:onsite/Features/Home/Presentation/view/widget/TaskCardListView.dart';
import 'package:onsite/data/dummy_tasks.dart';
import 'package:onsite/models/task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDone = false;

  List<Task> filterData() {
    return dummyTasks
        .where((task) =>
            isDone ? task.status == Status.done : task.status == Status.pending)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
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
                      isSelected: isDone == false,
                      onTap: () {
                        setState(() {
                          isDone = false;
                        });
                      },
                    ),
                    SwitcherPartWidget(
                        isSelected: isDone == true,
                        onTap: () {
                          setState(() {
                            isDone = true;
                          });
                        })
                  ],
                ),
              ),
               TaskCardListView(tasks: filterData()),
            ],
          ),
        ),
      ),
    );
  }
}

class SwitcherPartWidget extends StatelessWidget {
  const SwitcherPartWidget(
      {super.key, required this.isSelected, required this.onTap});
  final bool isSelected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        alignment: Alignment.center,
        height: 45.h,
        width: context.screenWidth * 0.43,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.background,
        ),
        duration: const Duration(milliseconds: 400),
        curve: Curves.bounceInOut,
        child: Text(
          'Pending',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: isSelected
                  ? Theme.of(context).colorScheme.background
                  : Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
