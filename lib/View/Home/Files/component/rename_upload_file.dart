import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';


class RenameUploadFileBottomSheet extends StatelessWidget {
  final String trailing;
  const RenameUploadFileBottomSheet({
    Key? key,
    required this.trailing
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil().screenHeight-100.h,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 20.h,horizontal: 20.w),
                  child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        'assets/image/auth/img/exit.png',
                        width: 50.w,
                      )),
                ),
                Text(
                  'Rename File',
                  style: AppStyles.semiBoldHeadline1,
                ),
                GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Done',
                      style: AppStyles.semiBoldBody1,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.accent2,
                border: Border.all(color: AppColors.primary3)
              ),
              child: Row(
                children: [
                  Image.asset(trailing,width: 58.w,),
                  SizedBox(
                    width: 10.w,
                  ),
                  Flexible(
                    child: TextFormField(
                      style: AppStyles.semiBoldBody1,
                      autofocus: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Name',
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
        ),
      ),
    );
  }
}
