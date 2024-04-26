import 'package:flutter/material.dart';
import 'package:onsite/Core/helpers/Constatnts.dart';
import 'package:onsite/Features/Home/Presentation/view/HomeScreen.dart';
import 'package:onsite/screens/notifications.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;

  Widget _buildBody() {
    switch (currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const HomeScreen();
      case 2:
        return const NotificationsScreen();
      case 3:
        return const NotificationsScreen();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: NavigationBar(
        surfaceTintColor: Theme.of(context).colorScheme.background,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        indicatorColor: Colors.transparent,
        selectedIndex: currentIndex,
        onDestinationSelected: (value) {
          setState(() {
            currentIndex = value;
          });
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
  }
}
