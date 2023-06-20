import 'package:flutter/material.dart';
import 'package:medical_app/manager/color_manager.dart';

class FloatingCircles extends StatelessWidget {
  const FloatingCircles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: -size.width / 12,
          left: -size.width / 12,
          child: Opacity(
            opacity: 0.2,
            child: Container(
              width: 268,
              height: 268,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Colors.white,
                      ColorManager.baseColor,
                      ColorManager.baseColor,
                    ],
                  ),
                  // color: Colors.green,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(150))),
            ),
          ),
        ),
        Positioned(
          bottom: -size.width / 12,
          right: -size.width / 9,
          child: Opacity(
            opacity: 0.2,
            child: Container(
              width: 268,
              height: 268,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Colors.white,
                      ColorManager.baseColor,
                      ColorManager.baseColor,
                    ],
                  ),
                  // color: Colors.green,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(150))),
            ),
          ),
        ),
      ],
    );
  }
}
