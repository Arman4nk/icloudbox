import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/View/Authentication/controller/login_controller.dart';
import 'package:icloudbox/Widgets/custom_button.dart';
import 'package:icloudbox/Widgets/custom_input.dart';

class CreateAccountBottomSheet extends StatelessWidget {
  const CreateAccountBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
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
                  'Create An Account',
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
                header: 'Full Name',
                hintText: 'Enter Your Name',
                svgIcon: 'assets/image/auth/svg/User.svg',
                focusNode: controller.myFocusNode3,
                pressed: controller.focus3.value,
                onChange: (value) {},
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Obx(
                  () => CustomInput(
                header: 'Mail',
                hintText: 'Enter Your Mail',
                svgIcon: 'assets/image/auth/svg/mail.svg',
                focusNode: controller.myFocusNode4,
                pressed: controller.focus4.value,
                onChange: (value) {},
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Obx(
                  () => CustomInput(
                header: 'Mobile',
                hintText: 'Enter Your Mobile Number',
                focusNode: controller.myFocusNode5,
                pressed: controller.focus5.value,
                svgIcon: 'assets/image/auth/svg/tell.svg',
                onChange: (value) {},
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Obx(
                  () => CustomInput(
                header: 'Password',
                hintText: 'Enter Your Password',
                svgIcon: 'assets/image/auth/svg/pass.svg',
                focusNode: controller.myFocusNode6,
                pressed: controller.focus6.value,
                onChange: (value) {},
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Obx(
                  () => CustomInput(
                header: 'Re Enter Password',
                hintText: 'Re Enter Password',
                svgIcon: 'assets/image/auth/svg/pass.svg',
                focusNode: controller.myFocusNode7,
                pressed: controller.focus7.value,
                onChange: (value) {},
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomButton(
              title: 'Next',
              loading: false,
              onTap: () {},
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
