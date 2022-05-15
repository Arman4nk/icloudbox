
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/View/Home/Files/controller/file_controller.dart';
import 'package:get/get.dart';

class ShareFileItem extends StatelessWidget {
  final String? img;
  final String? imgImage;
  final String title;
  final String subtitle;
  final String? subTitleIcon;

  const ShareFileItem({
    required this.title,
    this.img,
    required this.subtitle,
    this.subTitleIcon,
    this.imgImage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FilesController>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
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
              EdgeInsets.only(top: 10.h, bottom: 10.h,),
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
                trailing: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.accent1,
                  ),
                  child: const Icon(Icons.done,color: AppColors.textAccent,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




