import 'package:get/get.dart';
import '../../Authentication/page/login.dart';


class SplashController extends GetxController {
  // final ServiceHelper _serviceHelper = ServiceHelper();

  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 2), () async {
       Get.off(()=>const FirstPage());
    });
    super.onInit();
  }
}
