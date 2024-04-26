import 'package:flutter/material.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'dart:math' as math;

class CustomArc extends StatelessWidget {
  const CustomArc({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _CustomArcPainter(),
    );
  }
}

class CustomArc2 extends StatelessWidget {
  const CustomArc2({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CustomArcPainter2(),
    );
  }
}

class _CustomArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 8
      ..color = AppColors.bgColor
      ..style = PaintingStyle.stroke;
    final Rect rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);
    canvas.drawArc(rect, math.pi * 3 / 4, math.pi * 5 / 4, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomArcPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 8
      ..color = AppColors.secondary
      ..style = PaintingStyle.stroke;
    final Rect rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);
    canvas.drawArc(rect, math.pi * 2, -math.pi * 2, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
