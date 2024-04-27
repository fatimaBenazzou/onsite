import 'package:flutter/material.dart';
import 'package:onsite/Core/Ui/Animation.dart';
import 'package:onsite/Core/index.dart';
import 'package:onsite/Features/Chat/Presentation/View/ChatPage.dart';

import 'widget/CahtItemWidget.dart';

class MainChatScreen extends StatelessWidget {
  const MainChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Good Morning',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            Text(
              'Abderraouf',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            verticalBox(24),
            ChatItemWidget(
              onTap: () {
                context.push(FadeSlidePageTransition(page: const ChatPage()));
              },
            ),
            verticalBox(12),
            const ChatItemWidget(),
          ]),
        ),
      ),
    );
  }
}
