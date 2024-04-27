import 'package:flutter/material.dart';
import 'package:onsite/Core/theme/AppTheme.dart';

class DashedBorderContainer extends StatelessWidget {
  final Widget child;
  final double strokeWidth;
  final double gap;

  DashedBorderContainer({
    required this.child,
    this.strokeWidth = 2.0,
    this.gap = 6.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedRectPainter(strokeWidth: strokeWidth, gap: gap),
      child: child,
    );
  }
}

class DashedRectPainter extends CustomPainter {
  final double strokeWidth;
  final double gap;

  DashedRectPainter({required this.strokeWidth, required this.gap});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = AppColors.primary
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    var path = Path();
    double x = 0, y = 0;
    while (x < size.width) {
      path.moveTo(x, 0);
      path.lineTo(x + gap, 0);
      x += gap * 2;
    }
    x = size.width;
    while (y < size.height) {
      path.moveTo(x, y);
      path.lineTo(x, y + gap);
      y += gap * 2;
    }
    y = size.height;
    while (x > 0) {
      path.moveTo(x, y);
      path.lineTo(x - gap, y);
      x -= gap * 2;
    }
    x = 0;
    while (y > 0) {
      path.moveTo(x, y);
      path.lineTo(x, y - gap);
      y -= gap * 2;
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
