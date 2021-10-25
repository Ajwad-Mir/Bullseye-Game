import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SliderThumbImage extends SliderComponentShape {
    final ui.Image image;

    SliderThumbImage(this.image);

    @override
    Size getPreferredSize(bool isEnabled, bool isDiscrete) {
        return Size(0, 0);
    }

  @override
  void paint(PaintingContext context, Offset center, {Animation<double> activationAnimation, Animation<double> enableAnimation, bool isDiscrete, TextPainter labelPainter, RenderBox parentBox, SliderThemeData sliderTheme, TextDirection textDirection, double value, double textScaleFactor, Size sizeWithOverflow}) {
      final canvas = context.canvas;
      final imageWidth = image?.width ?? 10;
      final imageHeight = image?.height ?? 10;

      Offset imageOffset = Offset(
          center.dx - (imageWidth / 2),
          center.dy - (imageHeight / 2),
      );

      ui.Paint paint = ui.Paint()..filterQuality = FilterQuality.high;

      if (image != null) {
          canvas.drawImage(image, imageOffset, paint);
      }
  }
}