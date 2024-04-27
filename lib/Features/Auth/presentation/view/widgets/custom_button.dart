import 'package:flutter/material.dart';
import 'package:onsite/Core/theme/AppTheme.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData? icon;
  final Color textColor;
  final Color buttonColor;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
    this.textColor = Colors.white,
    this.buttonColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0), // Rayon des coins
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 24, color: textColor),
            const SizedBox(width: 8), // Espace entre l'icône et le texte
          ],
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Theme.of(context).colorScheme.background),
            // fontSize: 18.0, // Changer la taille du texte selon vos besoins
          ),
        ],
      ),
    );
  }
}
