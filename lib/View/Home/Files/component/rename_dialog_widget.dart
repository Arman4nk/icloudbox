import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:get/get.dart';
import '../../../../Utils/colors.dart';

class RenameDialogWidget extends StatelessWidget {
  final String? title;
  const RenameDialogWidget({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.accent2,
          ),
          child: Row(
            children: [
              SvgPicture.asset('assets/image/temp/svg/document_file.svg'),
              SizedBox(
                width: 10.w,
              ),
              Flexible(
                child: TextFormField(
                  style: AppStyles.semiBoldBody1,
                  autofocus: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: title??'Enter Your Name',
                    hintStyle: AppStyles.semiBoldBody1.apply(color: AppColors.secondary2)
                  ),
                  onEditingComplete: (){
                    Get.back();
                  },
                ),
              ),
              GestureDetector(
                onTap: (){
                  Get.back();
                },
                  child: Image.asset('assets/image/file/img/rename_button.png',width: 34.w,))
              // const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}


