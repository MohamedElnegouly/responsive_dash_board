import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            image: const DecorationImage(
                image: AssetImage(Assets.imagesCardBackground)),
            color: const Color(0xff4EB7F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
      ),
    );
  }
}
