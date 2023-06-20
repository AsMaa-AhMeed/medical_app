import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/screens/screens.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../components/comonents.dart';
import '../manager/manager.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const FloatingCircles(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 3,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(ImageAsset.doctorSvg,
                            height: AppSize.s150),
                        const SizedBox(height: AppSize.s10),
                        Text(StringManager.hospitalSystem,
                            style: getBoldStyle(
                                color: ColorManager.baseColor,
                                fontSize: AppMargin.m20))
                      ])),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppSize.s30, vertical: AppSize.s10),
                      child: LinearPercentIndicator(
                          animation: true,
                          animationDuration: 3000,
                          lineHeight: 4.0,
                          percent: .9,
                          progressColor: ColorManager.baseColor,
                          onAnimationEnd: () => navigateToLoginPage()),
                    ),
                    Text(StringManager.loaging,
                        style: getMediumStyle(color: ColorManager.baseColor)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  navigateToLoginPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LoginPage()));
  }
}
