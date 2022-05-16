
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Model/menu_item_model.dart';
import 'package:icloudbox/Widgets/blur_widget/blur_dialog.dart';

import '../../../../Utils/colors.dart';
import '../component/info_bottomsheet.dart';
import '../component/rename_dialog_widget.dart';
import '../component/share_bottomsheet.dart';

class FilesController extends GetxController{
  final PageController pageController = PageController();

  // final String icon;
  // FilesController(this.icon);
  final selectedIndex = 0.obs;

  setIndex(int index){
    selectedIndex(index);
  }

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
          const ShareBottomSheet(),
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


  void onChangeMenu (MenuItemModel? value){
    value?.onTap();
  }


}