import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/manager/manager.dart';

import 'comonents.dart';

AppBar mainAppBar() {
  return AppBar(
      automaticallyImplyLeading: false,
      title: Row(children: <Widget>[
        Container(
            width: AppSize.s40,
            height: AppSize.s40,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://lh3.googleusercontent.com/a/AGNmyxYwxlnbQowafEclRMSNrR3phi9cjgptF-tfGKCD3Q=s396-c-no")),
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)))),
        const SizedBox(width: AppSize.s14),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Text>[
          Text("AsMaa AhMed",
              style: getRegularStyle(color: ColorManager.darkBlack)),
          Text("Specialist , Receptionist",
              style: getRegularStyle(color: ColorManager.baseColor)),
        ])
      ]),
      actions: [
        SvgIconButton(
            svgPath: ImageAsset.bellSvg,
            color: ColorManager.darkBlack,
            onPressed: () {})
      ]);
}
