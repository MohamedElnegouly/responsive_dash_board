import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});
  static const items = [
    UserInfoModel(
        title: 'Madrani Andi',
        subtite: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: 'Josua Nunito',
        subtite: 'Josh Nunito@gmail.com',
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: 'Madrani Andi',
        subtite: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar3),
  ];
  @override
  Widget build(BuildContext context) {
    //two wayes to do height of the list view
    // 1. using row and items list better for small list 
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
    //2. using listview.builder detect the height of the child better for large list
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       itemCount: items.length,
    //       scrollDirection: Axis.horizontal,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //             child: UserInfoListTile(userInfoModel: items[index]));
    //       }),
    // );
  }
}
