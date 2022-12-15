import 'package:anubandhit/utils/colors.dart';
import 'package:anubandhit/widgets/small_text.dart';
import 'package:flutter/material.dart';


import '../utils/dimensions.dart';

class Button extends StatelessWidget {
  final VoidCallback on_pressed;
  final String text;
  double? width;
  double? height;
  Button(
      {Key? key,
      required this.on_pressed,
      required this.text,
      this.width = 0,
      this.height = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: on_pressed,
        child: Container(
          width: width == 0 ? Dimensions.screenWidth*0.6 : width,
          height: height == 0 ? Dimensions.screenWidth*0.15 : height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius20)),
            color: AppColors.orange
          ),
          child: Center(
            child: SmallText(text: text, size: Dimensions.font20, color: AppColors.white, fontWeight: FontWeight.bold,),
          ),
        ));
  }
}
