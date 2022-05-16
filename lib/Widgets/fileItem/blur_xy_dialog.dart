import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Model/file_item_model.dart';
import 'package:icloudbox/Model/menu_item_model.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/View/Home/Files/component/menu_item.dart';
import 'package:icloudbox/Widgets/blur_widget/blur_dialog.dart';
import 'package:icloudbox/Widgets/customButton/dropdown_button2.dart';
import 'package:icloudbox/Widgets/fileItem/file_item_controller.dart';
import 'package:icloudbox/Widgets/fileItem/show_file_item.dart';
import 'package:icloudbox/Widgets/fileItem/show_file_item2.dart';

class BlurXYDialog extends StatelessWidget {
  final FileItemModel model;

  const BlurXYDialog({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FileItemController(model));
    return BlurDialog(
      child: Stack(
        children: [
          Positioned(
              top: controller.location().dy,
             // left: controller.location().dx,
              child: DropdownButtonHideUnderline(
            child: DropdownButton2<MenuItemModel>(
              items: controller.menuItemData
                  .map(
                    (e) => DropdownMenuItem<MenuItemModel>(
                  child: MenuItems(item: e),
                  value: e,
                ),
              )
                  .toList(),
              onChanged: controller.onChangeMenu,
              openWithLongPress: true,

              customItemsIndexes: const [6],
              customItemsHeight: 8,
              dropdownWidth: 230,
              dropdownPadding: const EdgeInsets.symmetric(vertical: 20),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.accent2,
              ),
              offset: Offset(0, -8.h),
              customButton: ShowFileItem2(
                  itemModel: controller.model, slideOption: const [], onTap: () {}),
            ),
          )),
        ],
      ),
    );
  }
}
