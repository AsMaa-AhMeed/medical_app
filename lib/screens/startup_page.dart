import 'package:flutter/material.dart';

import '../components/comonents.dart';
import '../manager/manager.dart';

class StartUpPage extends StatelessWidget {
  const StartUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        const FloatingCircles(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(StringManager.prototypeMap,
                style: getBoldStyle(
                    color: ColorManager.baseColor, fontSize: AppMargin.m20)),
            const SizedBox(height: AppSize.s30),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: AppSize.s10, // gap between adjacent chips
              runSpacing: AppSize.s18, // gap between lines
              children: <Widget>[
                RoundedContainer(data: StringManager.doctor),
                RoundedContainer(data: StringManager.receptionist),
                RoundedContainer(data: StringManager.nurse),
                RoundedContainer(data: StringManager.analysisEmployee),
                RoundedContainer(data: StringManager.manger),
                RoundedContainer(data: StringManager.hr),
              ],
            )
          ],
        ),
      ]),
    );
  }
}
