import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../Utils/colors.dart';
import '../Utils/text_styls.dart';

class LoginBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final String svgIcon;
  final void Function() onTap;
  const LoginBox({
    required this.title,
    required this.svgIcon,
    required this.subtitle,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(bottom: 14.h),
          decoration: BoxDecoration(
            color: AppColors.accent2,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTile(
            leading: Container(
              padding: EdgeInsets.all(15.w),
              decoration: const BoxDecoration(
                color: AppColors.primary1,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(svgIcon),
            ),
            title: Text(title,style: AppStyles.semiBoldBody1,),
            subtitle: Text(subtitle,style: AppStyles.regularBody3.apply(color: AppColors.secondary2),),
          ),
        ),
      ),
    );
  }
}