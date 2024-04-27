import 'package:flutter/material.dart';
import 'package:onsite/Core/helpers/Constatnts.dart';
import 'package:onsite/Core/index.dart';

import 'widget/BubbleChat.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leadingWidth: 24,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Theme.of(context).colorScheme.secondary,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          'Project Manager',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.secondary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const BubbleChat(),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              height: 70.h,
              width: context.screenWidth,
              color: Theme.of(context).colorScheme.background,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        Assets.plusIcon,
                        height: 32,
                      )),
                  SizedBox(
                    height: 50.h,
                    width: 260.w,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.surface,
                        hintText: 'Type a message',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                                color: Theme.of(context).colorScheme.tertiary),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        Assets.sendIcon,
                        height: 32,
                      )),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
