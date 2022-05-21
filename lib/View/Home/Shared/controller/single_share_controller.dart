import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/View/Home/Files/component/share_bottomsheet.dart';

class SingleShareController extends GetxController{

  var viewFlag = true.obs;
  var editFlag = false.obs;

  List<SlidableAction> slideFileOption= [
    SlidableAction(
      onPressed: (ctx) {},
      backgroundColor: AppColors.primary3,
      foregroundColor: AppColors.accent4,
      icon: Icons.delete_outlined,
      label: 'Delete',
    ),
    SlidableAction(
      onPressed: (ctx) {
        Get.bottomSheet(
          const ShareFileBottomSheet(),
          backgroundColor: AppColors.accent2,
          elevation: 0,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)),
          ),
        );
      },
      backgroundColor: AppColors.primary3,
      foregroundColor: AppColors.primary2,
      icon: Icons.groups_outlined,
      label: 'Share',
    ),
    SlidableAction(
      onPressed: (ctx) {},
      backgroundColor: AppColors.primary3,
      foregroundColor: AppColors.primary2,
      icon: Icons.more_vert_outlined,
      label: 'More',
    ),
  ];



}