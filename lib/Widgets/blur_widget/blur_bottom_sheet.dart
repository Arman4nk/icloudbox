import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:icloudbox/Utils/colors.dart';

class BlurButtomsheet extends StatelessWidget {
  final Widget child;

  const BlurButtomsheet(
      {Key? key,
       required this.child,
      }
      )
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      child: BottomSheet(
        backgroundColor: AppColors.accent2,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)),
        ),
        onClosing: (){},
        builder: (context) => child,
      ),
    );
  }
}
