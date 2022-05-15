import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/View/Home/Files/component/rename_dialog_widget.dart';
import 'package:icloudbox/View/Home/Files/component/upload_file_bottomsheet.dart';
import 'package:icloudbox/Widgets/blur_widget/blur_bottom_sheet.dart';
import 'package:icloudbox/Widgets/blur_widget/blur_dialog.dart';

import 'add_file_widget.dart';

class AddFilePage extends StatelessWidget {
  const AddFilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
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
                  'Create Or Add',
                  style: AppStyles.semiBoldHeadline1,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Login',
                    style: AppStyles.semiBoldHeadline1
                        .apply(color: Colors.transparent),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Expanded(
                  child: AddFileWidget(
                    title: 'folder',
                    image: 'assets/image/file/img/folder.png',
                    onTap: () {
                      Get.dialog(
                        const BlurDialog(
                          child: RenameDialogWidget(
                            title: 'Untitled folder',
                          ),
                        ),
                        barrierDismissible: true,
                      );
                    },
                  ),
                ),
                Expanded(
                  child: AddFileWidget(
                    title: 'Upload',
                    image: 'assets/image/file/img/upload.png',
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        useRootNavigator: true,
                        enableDrag: false,
                        elevation: 0,
                        isDismissible: true,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => const BlurButtomsheet(
                          child: UploadFileBottomSheet(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: AddFileWidget(
                    title: 'Camera',
                    image: 'assets/image/file/img/camera.png',
                    onTap: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            )
          ],
        ),
      ),
    );
  }
}

