
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icloudbox/View/Home/Files/page/file.dart';
import 'package:icloudbox/View/Home/Home/page/home.dart';
import 'Setting/page/setting.dart';
import 'Shared/page/shared.dart';


class MainPageController extends GetxController{

  GlobalKey<NavigatorState> homeKey = GlobalKey();
  GlobalKey<NavigatorState> fileKey = GlobalKey();
  GlobalKey<NavigatorState> sharedKey = GlobalKey();
  GlobalKey<NavigatorState> settingKey = GlobalKey();

  final pageIndex = 2.obs;
  final List<Widget> tabList=[];

  @override
  void onInit() {
    tabList.addAll([
      Navigator(
        key: homeKey,
        onGenerateInitialRoutes: (navigator, initialRoute) => <Route>[
          MaterialPageRoute(builder: (context) => const Home(),)
        ],),
      Navigator(
        key: fileKey,
        onGenerateInitialRoutes: (navigator, initialRoute) => <Route>[
          MaterialPageRoute(builder: (context) => const File(),)
        ],),
      Navigator(
        key: sharedKey,
        onGenerateInitialRoutes: (navigator,initialRoute) => <Route>[
          MaterialPageRoute(builder: (context) => const Shared(),)

        ],
      ),
      Navigator(
        key: sharedKey,
        onGenerateInitialRoutes: (navigator,initialRoute) => <Route>[
          MaterialPageRoute(builder: (context) => const Setting(),)

        ],
      ),
    ]);
    super.onInit();
  }

  Future<bool> onWillPop() async {
    switch (pageIndex.value){
      case 0 :
        if(homeKey.currentState!.canPop()){
          homeKey.currentState!.pop();
          return false;
        }
        break;
      case 1 :
        if(fileKey.currentState!.canPop()){
          fileKey.currentState!.pop();
          return false;
        }
        break;
      case 2 :
        if(sharedKey.currentState!.canPop()){
          sharedKey.currentState!.pop();
          return false;
        }
        break;
      case 3 :
        if(settingKey.currentState!.canPop()){
          settingKey.currentState!.pop();
          return false;
        }
        break;
    }
    return true;
  }

  renderPage(){
    switch(pageIndex.value){
      case 0 :
        return  Navigator(
          key: homeKey,
          onGenerateInitialRoutes: (navigator, initialRoute) => <Route>[
            MaterialPageRoute(builder: (context) => const Home(),)
          ],);
      case 1 :
        return  Navigator(
          key: fileKey,
          onGenerateInitialRoutes: (navigator, initialRoute) => <Route>[
            MaterialPageRoute(builder: (context) => const File(),)
          ],);
      case 2 :
        return  Navigator(
          key: sharedKey,
          onGenerateInitialRoutes: (navigator, initialRoute) => <Route>[
            MaterialPageRoute(builder: (context) => const Shared(),)
          ],);
      case 3 :
        return  Navigator(
          key: settingKey,
          onGenerateInitialRoutes: (navigator, initialRoute) => <Route>[
            MaterialPageRoute(builder: (context) => const Setting(),)
          ],);

  }
  }
}