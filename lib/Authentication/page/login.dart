import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Home/main_page.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/Widgets/custom_input.dart';

import '../../Widgets/custom_button.dart';
import '../../Widgets/login_box.dart';
import '../controller/login_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 100.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 90.w),
                child: Image.asset('assets/image/auth/img/login.png'),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'iCloudBox',
                style: AppStyles.semiBoldTitle3,
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                'The Best File Sharing App',
                style:
                    AppStyles.regularBody2.apply(color: AppColors.secondary2),
              ),
              SizedBox(
                height: 34.h,
              ),
              LoginBox(
                svgIcon: 'assets/image/auth/svg/lock.svg',
                title: 'Login',
                subtitle: 'Login To Your Account',
                onTap: () {
                  Get.bottomSheet(
                    Padding(
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
                                Get.to(()=> const MAinPage());
                              },
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            InkWell(
                              onTap: (){
                                Get.back();
                                Get.bottomSheet(
                                  Padding(
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
                                                'Forget Password',
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
                                            height: 20.h,
                                          ),
                                          CustomButton(
                                            title: 'Submit',
                                            loading: false,
                                            onTap: () {
                                              Get.back();
                                              Get.bottomSheet(
                                                Padding(
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
                                                              'Change Password',
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
                                                          height: 30.h,
                                                        ),
                                                        CustomButton(
                                                            onTap: (){},
                                                            title: 'Change Password'
                                                        ),
                                                        SizedBox(
                                                          height: 30.h,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                backgroundColor: AppColors.accent2,
                                                elevation: 0,
                                                isScrollControlled: true,
                                                shape: const RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(20),
                                                      topRight: Radius.circular(20)),
                                                ),
                                              );
                                            },
                                          ),
                                          SizedBox(
                                            height: 30.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  backgroundColor: AppColors.accent2,
                                  elevation: 0,
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                  ),
                                );
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
                    backgroundColor: AppColors.accent2,
                    elevation: 0,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                  );
                },
              ),
              LoginBox(
                svgIcon: 'assets/image/auth/svg/create.svg',
                title: 'Create An Account',
                subtitle: 'Make New Account',
                onTap: () {
                  Get.bottomSheet(
                    Padding(
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
                    ),
                    backgroundColor: AppColors.accent2,
                    elevation: 0,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                  );
                },
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/image/auth/img/bott.png',
                fit: BoxFit.fill,
                width: ScreenUtil().screenWidth,
                height: ScreenUtil().screenHeight / 4,
              )),
        ],
      ),
    );
  }
}
