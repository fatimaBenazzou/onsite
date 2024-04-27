import 'package:flutter/material.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'dart:math' as math;

class CustomArc extends StatelessWidget {
  const CustomArc({super.key, required this.isWhite});
  final bool isWhite;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _CustomArcPainter(isWhite: isWhite),
    );
  }
}

class CustomArc2 extends StatelessWidget {
  const CustomArc2({super.key, required this.isWhite});
  final bool isWhite;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CustomArcPainter2(isWhite: isWhite),
    );
  }
}

class _CustomArcPainter extends CustomPainter {
  _CustomArcPainter({required this.isWhite});
  final bool isWhite;
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 8
      ..color = isWhite ? AppColors.bgColor : AppColors.secondary
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
  CustomArcPainter2({required this.isWhite});
  final bool isWhite;
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 8
      ..color = isWhite ? AppColors.secondary : AppColors.grey1
      ..style = PaintingStyle.stroke;
    final Rect rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);
    canvas.drawArc(rect, math.pi * 2, -math.pi * 2, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
