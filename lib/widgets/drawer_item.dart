import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/Active_And_inActive_Item.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActivated});
  final DrawerItemModel drawerItemModel;
  bool isActivated = false;
  @override
  Widget build(BuildContext context) {
    return isActivated
        ? ActivedrawerItem(drawerItemModel: drawerItemModel)
        : inActivedrawerItem(drawerItemModel: drawerItemModel);
  }
}
