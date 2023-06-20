import 'package:flutter/material.dart';
import 'package:medical_app/screens/screens.dart';

import '../manager/manager.dart';

class RoundedContainer extends StatelessWidget {
  final VoidCallback? onTap;
  final String data;
  const RoundedContainer({super.key, this.onTap, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const SplashPage()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSize.s16, vertical: AppSize.s12),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s10)),
            border: Border.all(
              color: ColorManager.grey,
            )),
        child: Text(
          data,
          textAlign: TextAlign.center,
          style: getRegularStyle(color: ColorManager.baseColor),
        ),
      ),
    );
  }
}
