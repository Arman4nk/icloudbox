import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/Utils/tools.dart';
import 'package:icloudbox/View/Home/Files/component/choose_location_upload_file.dart';
import 'package:icloudbox/View/Home/Files/component/rename_upload_file.dart';
import 'package:icloudbox/View/Home/Files/component/upload_file_item.dart';
import 'package:icloudbox/Widgets/custom_button.dart';

class UploadFileBottomSheet extends StatelessWidget {
  const UploadFileBottomSheet({
    Key? key,
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
                  'Save Location',
                  style: AppStyles.semiBoldHeadline1,
                ),
                GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Upload',
                      style: AppStyles.semiBoldBody1.apply(color: AppColors.accent1),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Image.asset(
              'assets/image/temp/img/sara.png',
              width: 118.w,
            ),
            SizedBox(height: 14.h,),
            Text('SaraHosseini.PNG',style: AppStyles.semiBoldBody1,),
            SizedBox(height: 6.h,),
            GestureDetector(
              onTap: (){
                Get.back();
                Tools.showModalBottomSheet(
                  context: context,
                  useRootNavigator: false,
                  child: const RenameUploadFileBottomSheet(trailing:  'assets/image/temp/img/sara.png',));
              },
                child: Text('Rename',style: AppStyles.regularBody2.apply(color: AppColors.accent1),)),
            SizedBox(height: 21.h,),
            const Divider(color: AppColors.secondary2,),
            SizedBox(height: 20.h,),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30.w),
                child: Text('Upload To',style: AppStyles.semiBoldHeadline2),
              ),
            ),
             SizedBox(height: 21.h,),
             const ShareFileItem(
               imgImage: 'assets/image/temp/img/file.png',
               subtitle: 'Only Root',
               title: 'iCloudBox Drive',
             ),
            SizedBox(height: 15.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:20.w ),
              child: CustomButton(
                title: 'Choose a different folder',
                backColor: AppColors.secondary3,
                textColor: AppColors.textPrimary,
                onTap: (){
                  Tools.showModalBottomSheet(
                      context: context,
                      child: const ChooseLocationUploadFileBottomSheet()
                  );

                },

              ),
            )
          ],
        ),
      ),
    );
  }
}
