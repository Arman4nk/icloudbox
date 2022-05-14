
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/View/Home/Files/controller/file_controller.dart';
import 'package:get/get.dart';

class ShareFileWidget extends StatelessWidget {
  final String? img;
  final String? imgImage;
  final String title;
  final String subtitle;
  final String? subTitleIcon;
  final List<SlidableAction> slideOption;

  const ShareFileWidget({
    required this.title,
    this.img,
    required this.subtitle,
    this.subTitleIcon,
    this.imgImage,
    required this.slideOption,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FilesController>();
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        // A motion is a widget used to control how the pane animates.
        motion: const ScrollMotion(),

        // A pane can dismiss the Slidable.
        dismissible: DismissiblePane(onDismissed: () {
          print('here');
        }),
        dragDismissible: false,
        // All actions are defined in the children parameter.
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
                leading:img!=null? SvgPicture.asset(img!) : ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(imgImage!)),
                title: Text(
                  title,
                  style: AppStyles.semiBoldBody1,
                ),
                subtitle: Row(
                  children: [
                    if (subTitleIcon != null)
                      SvgPicture.asset(subTitleIcon!),
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




