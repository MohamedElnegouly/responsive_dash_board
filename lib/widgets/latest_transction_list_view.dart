import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});
  static const items = [
    UserInfoModel(
        title: 'Madrani Andi',
        subtite: 'Madraniadi20@gmail',
        image: 'Assests.imagesAvatar1'),
    UserInfoModel(
        title: 'Josua Nunito',
        subtite: 'Josh Nunito@gmail.com',
        image: 'Assests.imagesAvatar2'),
    UserInfoModel(
        title: 'Madrani Andi',
        subtite: 'Madraniadi20@gmail',
        image: 'Assests.imagesAvatar3'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return UserInfoListTile(userInfoModel: items[index]);
        });
  }
}
