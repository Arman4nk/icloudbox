import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Model/menu_item_model.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/View/Home/Files/controller/search_file_controller.dart';
import 'package:icloudbox/Widgets/customButton/dropdown_button2.dart';
import 'menu_item.dart';

class SearchItem extends StatelessWidget {
  final String? img;
  final String? imgImage;
  final String title;
  final String subtitle;
  final String? subTitleIcon;
  final String? search;

  const SearchItem({
    required this.title,
    this.img,
    required this.subtitle,
    this.subTitleIcon,
    this.imgImage,
    this.search,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SearchFileController>();
    return DropdownButtonHideUnderline(
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
        customButton: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 8.h,
                ),
                height: 58 + 20.h + 13,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.primary3),
              ),
            ),
            Container(
              width: ScreenUtil().screenWidth,
              margin: EdgeInsets.only(bottom: 8.h, right: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.accent2,
                  border: Border.all(color: AppColors.primary3)),
              child: Padding(
                padding: EdgeInsets.only(top: 10.h, bottom: 10.h, right: 20.w),
                child: ListTile(
                  leading: img != null
                      ? SvgPicture.asset(img!)
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(imgImage!)),
                  title: _renderTitle(),
                  /*Text(
                    title,
                    style: AppStyles.semiBoldBody1,
                  ),*/
                  subtitle: Row(
                    children: [
                      if (subTitleIcon != null) SvgPicture.asset(subTitleIcon!),
                      if (subTitleIcon != null)
                        SizedBox(
                          width: 5.w,
                        ),
                      Text(
                        subtitle,
                        style: AppStyles.regularBody3
                            .apply(color: AppColors.secondary2),
                      ),
                    ],
                  ),
                  trailing: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: SvgPicture.asset('assets/image/file/svg/arrow.svg'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _renderTitle() {
    if (search != null) {
      List<String> splitString = title.split(search!);

      List<TextSpan> listSpans = [];
      splitString.sublist(1).forEach((element) {
        listSpans.add(TextSpan(text: search , style: const TextStyle(backgroundColor: AppColors.accent3)));
        listSpans.add(TextSpan(text: element));
      });

      return Text.rich(
        TextSpan(
          text: splitString[0],
          children: listSpans,
        ),
      );
    } else {
      return Text(title);
    }
  }
}
