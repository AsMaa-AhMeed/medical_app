import 'package:flutter/material.dart';

import '../components/comonents.dart';
import '../manager/manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(),
      body: Column(children: [
        const SizedBox(height: AppSize.s30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: const [
                Section(
                  data: StringManager.calls,
                  svgPath: ImageAsset.userSvg,
                  color: ColorManager.lightBlue,
                  height: 192,
                ),
                Section(
                  data: StringManager.reports,
                  svgPath: ImageAsset.documentSvg,
                  color: ColorManager.purple,
                  height: 158,
                ),
              ],
            ),
            Column(
              children: const [
                Section(
                  data: StringManager.tasks,
                  svgPath: ImageAsset.checkBoxSvg,
                  color: ColorManager.green,
                  height: 158,
                ),
                Section(
                  data: StringManager.attendance,
                  svgPath: ImageAsset.fingerprintSvg,
                  color: ColorManager.cyan,
                  height: 192,
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
