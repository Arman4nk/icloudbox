import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../Utils/colors.dart';
import '../Utils/text_styls.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final bool? loading;

  const CustomButton({
    required this.onTap,
    required this.title,
    this.loading,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding:loading==true? EdgeInsets.only(top: 10.5.h,bottom: 10.5.h): EdgeInsets.only(bottom: 27.h,top: 25.h),
        decoration: BoxDecoration(
          color: AppColors.primary2,
          borderRadius: BorderRadius.circular(14),
        ),
        child:loading==true?SpinKitCircle(color: AppColors.accent2,size: 50.h,)
            : Center(
          child: Text(
            title,style: AppStyles.semiBoldBody1.apply(color: AppColors.accent2),
          ),
        ),
      ),
    );
  }
}
