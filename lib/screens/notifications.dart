import 'package:flutter/material.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/data/dummy_notifications.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey1,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Notifications',
          style: AppFonts.h1Medium.copyWith(color: AppColors.primary),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: dummyNotifications
              .map(
                (notif) => Card(
                  elevation: 2, // Ajout d'une légère ombre
                  color: Colors.white, // Fond blanc pour la ListTile
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                        
                        notif.imageUrl,
                      ),
                    ),
                    title: Text(
                      notif.taskName,
                      style: AppFonts.h2Medium.copyWith(
                        color: AppColors.typoColor,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          'Assigned to you at    ',
                          style: AppFonts.h2Medium.copyWith(
                            color: AppColors.typoColor,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          notif.time,
                          style: AppFonts.h2Medium.copyWith(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Action à effectuer lorsque le bouton "read" est pressé
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 4, // Ajout d'une légère ombre
                      ),
                      child: Text('Read More',
                          style: TextStyle(color: AppColors.bgColor)),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
