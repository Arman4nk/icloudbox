
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Model/menu_item_model.dart';
import '../../../../Utils/colors.dart';

class MenuItems extends StatelessWidget {
  final MenuItemModel item;
  const MenuItems({Key? key,required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.text,
                style: const TextStyle(
                  color: AppColors.primary2,
                ),
              ),
              SvgPicture.asset(item.icon)
            ],
          ),
        ),
       if(item.text != 'Delete') const Divider(color: AppColors.secondary3,),
      ],

    );
  }
}


/*
class MenuItems {
  static const List<MenuItemModel> firstItems = [get,rename,download,share,add,delete];

  static const get =       MenuItemModel(text: 'Get Info', icon: 'assets/image/file/svg/info.svg');
  static const rename =    MenuItemModel(text: 'Rename', icon: 'assets/image/file/svg/rename.svg');
  static const download =   MenuItemModel(text: 'Download', icon: 'assets/image/file/svg/download.svg');
  static const share =      MenuItemModel(text: 'Share', icon: 'assets/image/file/svg/share.svg');
  static const add =        MenuItemModel(text: 'Add To Starred', icon: 'assets/image/file/svg/star_on.svg');
  static const delete =     MenuItemModel(text: 'Delete', icon: 'assets/image/file/svg/delete.svg');

  static Widget buildItem(MenuItemModel item) {
    return;
  }


}*/
