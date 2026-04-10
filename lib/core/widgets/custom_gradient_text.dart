import 'package:flutter/material.dart';
import 'package:pollo/core/resources/colors.dart';

class CustomGradientText extends StatelessWidget {
  final Text text;
  final double end;
  const CustomGradientText({super.key, required this.text, this.end = 1.0});
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) =>
          AppColors.appGradientColor(end: end).createShader(bounds),
      child: text,
    );
  }
}
