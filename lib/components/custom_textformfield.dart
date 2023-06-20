import 'package:flutter/material.dart';

import '../manager/manager.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  const CustomTextFormField(
      {super.key, this.suffixIcon, this.prefixIcon, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppMargin.m18),
      height: AppSize.s60,
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s10))),
          prefixIcon: Container(
              width: AppSize.s40,
              margin: const EdgeInsets.only(
                  left: AppSize.s10,
                  bottom: AppSize.s16,
                  top: AppSize.s16,
                  right: AppSize.s14),
              decoration: const BoxDecoration(
                  border: Border(
                      right: BorderSide(
                          color: ColorManager.baseColor, width: 1.5))),
              child: prefixIcon),
          suffixIcon: SizedBox(width: AppSize.s30, child: suffixIcon),
          prefixIconColor: ColorManager.baseColor,
          suffixIconColor: ColorManager.baseColor,
          hintText: hintText,
          hintStyle: getRegularStyle(color: ColorManager.grey),
          focusColor: ColorManager.baseColor,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ColorManager.lightGrey),
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s10))),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.baseColor),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s10)),
          ),
        ),
      ),
    );
  }
}
