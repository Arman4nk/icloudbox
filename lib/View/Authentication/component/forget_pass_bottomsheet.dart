import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/Utils/tools.dart';
import 'package:icloudbox/View/Authentication/component/change_pass_bottomsheet.dart';
import 'package:icloudbox/View/Authentication/controller/login_controller.dart';
import 'package:icloudbox/Widgets/custom_button.dart';
import 'package:icloudbox/Widgets/custom_input.dart';

class ForgetPassBottomSheet extends StatelessWidget {
  const ForgetPassBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();

    return   Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment:
              MainAxisAlignment
                  .spaceBetween,
              children: [
                Padding(
                  padding:
                  EdgeInsets.symmetric(
                      vertical: 20.h),
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
                  'Forget Password',
                  style: AppStyles
                      .semiBoldHeadline1,
                ),
                Padding(
                  padding:
                  const EdgeInsets.all(
                      20.0),
                  child: Text(
                    'Login',
                    style: AppStyles
                        .semiBoldHeadline1
                        .apply(
                        color: Colors
                            .transparent),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            Obx(
                  () => CustomInput(
                header: 'Your Mail',
                hintText: 'Enter Your Mail',
                svgIcon:
                'assets/image/auth/svg/mail.svg',
                focusNode:
                controller.myFocusNode1,
                pressed:
                controller.focus1.value,
                onChange: (value) {},
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomButton(
              title: 'Submit',
              loading: false,
              onTap: () {
                Get.back();

                Tools.showModalBottomSheet(
                    context: context,
                    child:const ChangePassBottomSheet(),
                );

              },
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
