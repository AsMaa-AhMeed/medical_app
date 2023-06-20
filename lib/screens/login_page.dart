import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/components/comonents.dart';
import 'package:medical_app/screens/home_page.dart';

import '../manager/manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        const FloatingCircles(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ImageAsset.doctorSvg, height: AppSize.s100),
            const SizedBox(height: AppSize.s40),
            Text(StringManager.welcomeBack,
                style: getBoldStyle(
                    color: ColorManager.baseColor, fontSize: AppMargin.m26)),
            Text(StringManager.toContinue,
                style: getRegularStyle(
                    color: ColorManager.grey, fontSize: AppMargin.m14)),
            const SizedBox(height: AppSize.s50),
            const CustomTextFormField(
                prefixIcon: Icon(Icons.phone),
                hintText: StringManager.phoneNumber),
            const CustomTextFormField(
                prefixIcon: Icon(Icons.lock_outline_rounded),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: StringManager.password),
            InkWell(
              onTap: () {},
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  StringManager.forgetPassward,
                  textAlign: TextAlign.end,
                  style: getRegularStyle(color: ColorManager.grey),
                ),
              ),
            ),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(AppSize.s18),
                child: ElevatedButton(
                    onPressed: () => navigateToHomePage(),
                    style: ElevatedButton.styleFrom(
                        elevation: AppSize.s0,
                        padding: const EdgeInsets.all(AppSize.s14),
                        backgroundColor: ColorManager.baseColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSize.s10),
                        )),
                    child: Text(
                      StringManager.login,
                      style: getRegularStyle(color: ColorManager.white),
                    ))),
          ],
        )
      ]),
    );
  }

  navigateToHomePage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HomePage()));
  }
}
