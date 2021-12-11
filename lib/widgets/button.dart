import 'package:flutter/material.dart';
import 'package:fluttermasterproject/theme/colors.dart';

class ResButton extends StatelessWidget {
  ResButton({Key? key, this.width = 100, this.isResponsive=false}) : super(key: key);
  bool? isResponsive;
  double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/button-one.png'),
        ],
      ),
    );
  }
}
