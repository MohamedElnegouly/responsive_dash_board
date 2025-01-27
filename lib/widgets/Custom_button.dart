import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.hint, this.color, this.textColor});
  final String hint;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: color ?? const  Color(0XFF4DB7F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          child: Text(
            hint,
            style: AppStyles.styleSemiBold18.copyWith(color: textColor),
          )),
    );
  }
}
