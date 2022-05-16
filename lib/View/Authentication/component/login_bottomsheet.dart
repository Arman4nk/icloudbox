import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/Utils/tools.dart';
import 'package:icloudbox/View/Authentication/component/forget_pass_bottomsheet.dart';
import 'package:icloudbox/View/Authentication/controller/login_controller.dart';
import 'package:icloudbox/View/Home/main_page.dart';
import 'package:icloudbox/Widgets/custom_button.dart';
import 'package:icloudbox/Widgets/custom_input.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();

    return  BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
      child: BottomSheet(
        backgroundColor: AppColors.accent2,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)),
        ),
        builder: (context) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 20.h),
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
                      'Login',
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
                  height: 14.h,
                ),
                Obx(
                      () => CustomInput(
                    header: 'Your Mail',
                    hintText: 'Enter Your Mail',
                    svgIcon: 'assets/image/auth/svg/mail.svg',
                    focusNode: controller.myFocusNode1,
                    pressed: controller.focus1.value,
                    onChange: (value) {},
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Obx(
                      () => CustomInput(
                    header: 'Your Password',
                    hintText: 'Enter Your Password',
                    svgIcon: 'assets/image/auth/svg/pass.svg',
                    focusNode: controller.myFocusNode2,
                    pressed: controller.focus2.value,
                    onChange: (value) {},
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                  title: 'Login To Account',
                  loading: false,
                  onTap: () {
                    Get.to(() => const MAinPage());
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                    Tools.showModalBottomSheet(
                        context: context,
                        child: const ForgetPassBottomSheet(),
                    );
                  /*  Get.bottomSheet(

                      backgroundColor: AppColors.accent2,
                      barrierColor: Colors.redAccent.withOpacity(.6),
                      elevation: 0,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                    );*/
                  },
                  child: Text(
                    'Forget Your Password?',
                    style: AppStyles.semiBoldBody2
                        .apply(color: AppColors.accent1),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
        onClosing: () {},
      ),
    );
  }
}
