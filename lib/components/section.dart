import 'package:flutter/material.dart';

import '../manager/manager.dart';
import 'comonents.dart';

class Section extends StatelessWidget {
  final double? height;
  final Color? color;
  final VoidCallback? onPressed;
  final String svgPath;
  final String data;
  const Section(
      {super.key,
      this.height,
      this.color,
      this.onPressed,
      required this.data,
      required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      height: height,
      margin: const EdgeInsets.symmetric(
          horizontal: AppSize.s8, vertical: AppSize.s10),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s10))),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            width: AppSize.s70,
            height: AppSize.s70,
            decoration: BoxDecoration(
                border: Border.all(color: ColorManager.white),
                borderRadius:
                    const BorderRadius.all(Radius.circular(AppSize.s10))),
            child: SvgIconButton(
                svgPath: svgPath,
                height: AppSize.s30,
                color: ColorManager.white,
                onPressed: onPressed)),
        const SizedBox(height: AppSize.s10),
        Text(data, style: getSemiBoldStyle(color: ColorManager.white))
      ]),
    );
  }
}
