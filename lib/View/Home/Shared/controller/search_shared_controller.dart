import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:icloudbox/View/Home/Files/component/info_bottomsheet.dart';
import 'package:icloudbox/View/Home/Files/component/rename_dialog_widget.dart';
import 'package:icloudbox/View/Home/Files/component/share_bottomsheet.dart';
import '../../../../Model/menu_item_model.dart';
import '../../../../Utils/colors.dart';
import '../../../../Widgets/blur_widget/blur_dialog.dart';


class SearchFileController extends GetxController{

  final isTyping = false.obs;
  final searchText = ''.obs;
  List<MenuItemModel> menuItemData= [];
  @override
  void onInit() {
    menuItemData.addAll([
      MenuItemModel(text: 'Get Info', icon: 'assets/image/file/svg/info.svg',onTap: _onTapGetInfo),
      MenuItemModel(text: 'Rename', icon: 'assets/image/file/svg/rename.svg',onTap: _onTapRename),
      MenuItemModel(text: 'Download', icon: 'assets/image/file/svg/download.svg',onTap: _onTapDownload),
      MenuItemModel(text: 'Share', icon: 'assets/image/file/svg/share.svg',onTap: _onTapShare),
      MenuItemModel(text: 'Add To Starred', icon: 'assets/image/file/svg/star_on.svg',onTap:_onTapAddToStarred),
      MenuItemModel(text: 'Delete', icon: 'assets/image/file/svg/delete.svg',onTap: _onTapDelete),
    ]);    super.onInit();
  }

  void _onTapGetInfo(){
    Get.bottomSheet(
      const InfoBottomSheet(),
      backgroundColor: AppColors.accent2,
      elevation: 0,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)),
      ),
    );
  }
  void _onTapRename(){
    Get.dialog(
      const BlurDialog(
        child:RenameDialogWidget(),
      ),
      barrierDismissible: true,
    );

  }
  void _onTapDownload(){}
  void _onTapShare(){
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
  }
  void _onTapAddToStarred(){}
  void _onTapDelete(){}

  void onChangeMenu (MenuItemModel? value){
    value?.onTap();
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