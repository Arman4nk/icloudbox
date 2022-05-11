import 'package:get/get.dart';

class FilesController extends GetxController{
  final selectedIndex = 0.obs;
  setIndex(int index){
    selectedIndex(index);
  }
}