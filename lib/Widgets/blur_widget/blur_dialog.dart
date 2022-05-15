import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Utils/colors.dart';

class BlurDialog extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? padding;

  const BlurDialog(
      {Key? key,
        this.child,
        this.padding = const EdgeInsets.symmetric(horizontal: 20)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Container(
            color: Colors.transparent,
            padding: padding,
            child: child
          ),
        ),
        ),
    );
  }
}
