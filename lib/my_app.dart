
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'SplashScreen/page/splash_screen.dart';
import 'Utils/colors.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_)=>  GetMaterialApp(
          scrollBehavior:const ScrollBehavior(
              androidOverscrollIndicator: AndroidOverscrollIndicator.stretch
          ),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            backgroundColor: AppColors.primary1,
            scaffoldBackgroundColor: AppColors.primary1,
            fontFamily: 'SfPro',
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          home: const SplashScreen(),
          builder: (context,child){
            // ScreenUtil.init(context);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!,
            );
          },
        )
    );
  }
}