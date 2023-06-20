import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/manager/manager.dart';

class SvgIconButton extends StatelessWidget {
  const SvgIconButton({
    Key? key,
    this.onPressed,
    this.height,
    this.color = ColorManager.white,
    required this.svgPath,
  }) : super(key: key);

  final Function()? onPressed;
  final String svgPath;
  final Color? color;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        svgPath,
        height: height,
        color: color,
      ),
    );
  }
}
