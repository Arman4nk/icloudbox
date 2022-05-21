import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Utils/colors.dart';

class ShareSharedController extends GetxController{

  List<SlidableAction> slideShareOption= [
    SlidableAction(
      onPressed: (ctx) {},
      backgroundColor: AppColors.primary3,
      foregroundColor: AppColors.accent4,
      icon: Icons.delete_outlined,
      label: 'Remove',
    ),
  ];


  late FocusNode myFocusNode;
  final focus = false.obs;
  @override
  void onInit() {
    myFocusNode = FocusNode();
    myFocusNode.addListener(() {
      if(myFocusNode.hasFocus){
        focus(true);
      }
      else{
        focus(false);
      }
    });

    super.onInit();
  }

}