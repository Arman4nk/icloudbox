
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icloudbox/Model/file_item_model.dart';
import 'package:icloudbox/Model/share_item_model.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/View/Home/Files/controller/file_controller.dart';
import 'package:get/get.dart';

class ShareFileWidget extends StatelessWidget {
/*  final String? img;
  final String? imgImage;
  final String title;
  final String subtitle;
  final String? subTitleIcon;
  final List<SlidableAction> slideOption;*/
  final ShareItemModel itemModel;
  final List<SlidableAction> slideOption;

  const ShareFileWidget({
    required this.itemModel,
    required this.slideOption,
/*    required this.title,
    this.img,
    required this.subtitle,
    this.subTitleIcon,
    this.imgImage,
    required this.slideOption,*/
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FilesController>();
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(
            onDismissed: () {
          print('here');
        }),
        dragDismissible: false,
        children: slideOption,
      ),
      child: Stack(
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
                border: Border.all(color: AppColors.primary3)
            ),
            child: Padding(
              padding:
              EdgeInsets.only(top: 10.h, bottom: 10.h, right: 20.w),
              child: ListTile(
                leading:itemModel.img!=null? SvgPicture.asset(itemModel.img!) : ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(itemModel.imgImage!)),
                title: Text(
                  itemModel.title,
                  style: AppStyles.semiBoldBody1,
                ),
                subtitle: Row(
                  children: [
                    if (itemModel.subTitleIcon != null)
                      SvgPicture.asset(itemModel.subTitleIcon!),
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
                  child:
                  SvgPicture.asset('assets/image/file/svg/arrow.svg'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




