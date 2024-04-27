import 'package:flutter/material.dart';
import 'package:onsite/Core/helpers/Constatnts.dart';
import 'package:onsite/Features/Home/Presentation/view/HomeScreen.dart';
import 'package:onsite/screens/notifications.dart';

import 'package:onsite/Layout/Logic/LayoutCubit.dart';

import 'Core/index.dart';
import 'Layout/Logic/LayoutStates.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        final cubit=LayoutCubit.get(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: NavigationBar(
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
                icon: const ImageIcon(AssetImage(Assets.noteIcon)),
                label: 'Tasks',
                selectedIcon: ImageIcon(
                  const AssetImage(Assets.noteIcon),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              NavigationDestination(
                icon: const ImageIcon(AssetImage(Assets.chatIcon)),
                label: 'Chat',
                selectedIcon: ImageIcon(
                  const AssetImage(Assets.chatIcon),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              NavigationDestination(
                icon: const ImageIcon(AssetImage(Assets.notificationIcon)),
                label: 'Notification',
                selectedIcon: ImageIcon(
                  const AssetImage(Assets.notificationIcon),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              NavigationDestination(
                icon: const ImageIcon(AssetImage(Assets.profileIcon)),
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
