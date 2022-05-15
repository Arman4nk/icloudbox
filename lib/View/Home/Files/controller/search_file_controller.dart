import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Model/menu_item_model.dart';
import '../../../../Utils/colors.dart';
import '../../../../Widgets/blur_widget/blur_dialog.dart';
import '../component/info_bottomsheet.dart';
import '../component/rename_dialog_widget.dart';
import '../component/share_bottomsheet.dart';

class SearchFileController extends GetxController{

  final isTyping = false.obs;
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
    BlurDialog(
      child:RenameDialogWidget(),
    ),
    barrierDismissible: true,
  );

}
void _onTapDownload(){}
void _onTapShare(){
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
}
void _onTapAddToStarred(){}
void _onTapDelete(){}

void onChangeMenu (MenuItemModel? value){
  value?.onTap();
}

  List<TextSpan> highlightOccurrences(String source, String query) {
    if (query == null || query.isEmpty || !source.toLowerCase().contains(query.toLowerCase())) {
      return [ TextSpan(text: source) ];
    }
    final matches = query.toLowerCase().allMatches(source.toLowerCase());

    int lastMatchEnd = 0;

    final List<TextSpan> children = [];
    for (var i = 0; i < matches.length; i++) {
      final match = matches.elementAt(i);

      if (match.start != lastMatchEnd) {
        children.add(TextSpan(
          text: source.substring(lastMatchEnd, match.start),
        ));
      }

      children.add(TextSpan(
        text: source.substring(match.start, match.end),
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ));

      if (i == matches.length - 1 && match.end != source.length) {
        children.add(TextSpan(
          text: source.substring(match.end, source.length),
        ));
      }

      lastMatchEnd = match.end;
    }
    return children;
  }


}