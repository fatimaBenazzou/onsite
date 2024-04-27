import 'package:flutter/material.dart';

class BubbleChat extends StatelessWidget {
  const BubbleChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
          )),
      child: Text(
        'Hello World',
        style: Theme.of(context).textTheme.bodyMedium,
        maxLines: 10,
      ),
    );
  }
}
