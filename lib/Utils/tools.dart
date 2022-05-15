import 'package:flutter/material.dart' as material;
import 'package:icloudbox/Widgets/blur_widget/blur_bottom_sheet.dart';

class Tools {
  static Future showModalBottomSheet(
      {required material.BuildContext context,required material.Widget child,useRootNavigator}){
    return material.showModalBottomSheet(
      context: context,
      useRootNavigator:useRootNavigator?? true,
      enableDrag: false,
      elevation: 0,
      isDismissible: true,
      isScrollControlled: true,
      backgroundColor: material.Colors.transparent,
      builder: (context) =>  BlurButtomsheet(
        child:child,
      ),
    );
  }
}