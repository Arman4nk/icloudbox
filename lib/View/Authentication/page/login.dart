import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/Utils/tools.dart';
import 'package:icloudbox/View/Authentication/component/create_account_bottomsheet.dart';
import 'package:icloudbox/View/Authentication/component/login_bottomsheet.dart';
import 'package:icloudbox/Widgets/custom_input.dart';
import '../../../Widgets/custom_button.dart';
import '../../../Widgets/login_box.dart';
import '../../Home/main_page.dart';
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
              Builder(
                builder: (context22) => LoginBox(
                  svgIcon: 'assets/image/auth/svg/lock.svg',
                  title: 'Login',
                  subtitle: 'Login To Your Account',
                  onTap: () {
                    showModalBottomSheet(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      context: context,
                     builder: (context) =>  const LoginBottomSheet(),
                    );
                  },
                ),
              ),
              LoginBox(
                svgIcon: 'assets/image/auth/svg/create.svg',
                title: 'Create An Account',
                subtitle: 'Make New Account',
                onTap: () {
                  Tools.showModalBottomSheet(
                      context: context,
                      child:const CreateAccountBottomSheet(),
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
