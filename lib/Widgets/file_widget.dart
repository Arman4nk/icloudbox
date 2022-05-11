import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../Utils/colors.dart';
import '../Utils/text_styls.dart';

class FileWidget extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;
  final String? subTitleIcon;
  const FileWidget({
    required this.title,
    required this.img,
    required this.subtitle,
     this.subTitleIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: EdgeInsets.only(bottom: 8.h,),
            height: 58+20.h + 13,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.primary3
            ),
          ),
        ),
        Container(
          width: ScreenUtil().screenWidth,
          margin: EdgeInsets.only(bottom: 8.h,right: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.accent2,
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: 10.h,bottom: 10.h,right: 20.w),
            child: ListTile(
              leading: SvgPicture.asset(img),
              title: Text(title,style: AppStyles.semiBoldBody1,),
              subtitle:  Row(
                children: [
                  if(subTitleIcon != null)SvgPicture.asset(subTitleIcon!),
                  if(subTitleIcon != null) SizedBox(width: 5.w,),
                  Text(subtitle,style: AppStyles.regularBody3.apply(color: AppColors.secondary2),),
                ],
              ),
              trailing: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8.w),
                child: SvgPicture.asset('assets/image/file/svg/arrow.svg'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
