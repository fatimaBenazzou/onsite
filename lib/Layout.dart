import 'package:flutter/material.dart';
import 'package:onsite/Core/helpers/Constatnts.dart';
import 'package:onsite/Layout/Logic/LayoutCubit.dart';

import 'Core/index.dart';
import 'Layout/Logic/LayoutStates.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        final cubit = LayoutCubit.get(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: NavigationBar(
            overlayColor: MaterialStateColor.resolveWith(
              (states) => Colors.transparent,
            ),
            surfaceTintColor: Theme.of(context).colorScheme.background,
            indicatorShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            indicatorColor: Colors.transparent,
            selectedIndex: cubit.currentIndex,
            onDestinationSelected: (value) {
              cubit.changeLayout(value);
            },
            backgroundColor: Theme.of(context).colorScheme.background,
            destinations: [
              NavigationDestination(
                icon: ImageIcon(
                  const AssetImage(Assets.noteIcon),
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                label: 'Tasks',
                selectedIcon: ImageIcon(
                  const AssetImage(Assets.noteIcon),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              NavigationDestination(
                icon: ImageIcon(
                  const AssetImage(Assets.chatIcon),
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                label: 'Chat',
                selectedIcon: ImageIcon(
                  const AssetImage(Assets.chatIcon),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              NavigationDestination(
                icon: ImageIcon(
                  const AssetImage(Assets.notificationIcon),
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                label: 'Notification',
                selectedIcon: ImageIcon(
                  const AssetImage(Assets.notificationIcon),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              NavigationDestination(
                icon: ImageIcon(
                  const AssetImage(Assets.profileIcon),
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                label: 'Profile',
                selectedIcon: ImageIcon(
                  const AssetImage(Assets.profileIcon),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
