import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';

class AddFileWidget extends StatelessWidget {
  final String title;
  final String image;
  final void Function() onTap;

  const AddFileWidget({
    required this.title,
    required this.image,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 22.h),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              image,
              width: 54.w,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              title,
              style: AppStyles.semiBoldBody2,
            )
          ],
        ),
      ),
    );
  }
}
