import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icloudbox/Model/file_item_model.dart';
import 'package:icloudbox/View/Home/Files/controller/file_controller.dart';
import 'package:icloudbox/Widgets/fileItem/blur_xy_dialog.dart';
import '../../Utils/colors.dart';
import '../../Utils/text_styls.dart';
import 'package:get/get.dart';

class ShowFileItem2 extends StatelessWidget {
/*  final String? img;
  final String? imgImage;
  final String title;
  final String subtitle;
  final String? subTitleIcon;
  final String? subTitleIcon2;*/
  final void Function() onTap;
  final FileItemModel itemModel;

//  final GlobalKey globalKey;
  final List<SlidableAction> slideOption;

  const ShowFileItem2({
    required this.itemModel,
    required this.slideOption,
    required this.onTap,
    // required this.globalKey,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: onTap,
      child: Container(
        width:ScreenUtil().screenWidth-40.w,
        margin: EdgeInsets.only(bottom: 8.h, right: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.accent2,
            border: Border.all(color: AppColors.primary3)),
        child: Padding(
          padding: EdgeInsets.only(
            top: 10.h,
            bottom: 10.h,
          ),
          child: ListTile(
            leading: itemModel.img != null
                ? SvgPicture.asset(itemModel.img!)
                : ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(itemModel.imgImage!)),
            title: Text(
              itemModel.title,
              style: AppStyles.semiBoldBody1,
            ),
            subtitle: Row(
              children: [
                if (itemModel.subTitleIcon != null) SvgPicture.asset(itemModel.subTitleIcon!),
                if (itemModel.subTitleIcon2 != null)
                  SizedBox(
                    width: 5.w,
                  ),
                if (itemModel.subTitleIcon2 != null)
                  SvgPicture.asset(itemModel.subTitleIcon2!),
                if (itemModel.subTitleIcon != null)
                  SizedBox(
                    width: 5.w,
                  ),
                Text(
                  itemModel.subtitle,
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
    );
  }
}
