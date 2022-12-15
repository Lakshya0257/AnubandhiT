// ignore_for_file: prefer_const_constructors

import 'package:anubandhit/widgets/big_text.dart';
import 'package:anubandhit/widgets/button.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';

class MainProfilePage extends StatefulWidget {
  static launch(BuildContext context) =>
      Navigator.pushNamed(context, '/main-profile');
  const MainProfilePage({super.key});

  @override
  State<MainProfilePage> createState() => _MainProfilePageState();
}

class _MainProfilePageState extends State<MainProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
        child: Column(
          children: [
            SizedBox(
              height: Dimensions.height40,
              child: Row(children: [
                IconButton(icon: Icon(
                  Icons.menu_outlined,
                  color: AppColors.black,
                ),onPressed: (){},
                )
              ]),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: BigText(
                  text: 'Profile',
                  fontWeight: FontWeight.bold,
                  size: Dimensions.font20 * 1.5,
                )),
            SizedBox(
              height: Dimensions.height10 / 2,
            ),
            SizedBox(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: Dimensions.radius30 * 1.5,
                    backgroundImage: NetworkImage(
                        'https://blog.readyplayer.me/content/images/2021/04/IMG_0689.PNG'),
                  ),
                  BigText(
                    text: 'User name',
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  BigText(
                    text: 'Address',
                    size: Dimensions.font15,
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  BigText(
                    text: 'Phone Number',
                    size: Dimensions.font15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height15,
            ),
            SizedBox(
              height: Dimensions.height40 * 5,
              width: double.maxFinite / 1.2,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: Dimensions.width15),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(Dimensions.radius20)),
                    color: Color(0xFFFFF0D2)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.width20,
                      vertical: Dimensions.height15),
                  child: Column(children: [
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Container(
                              decoration:
                                  BoxDecoration(color: Color(0xFFFFF0D2)),
                              child: BigText(text: 'Bank Details')),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.dialog(Container(
                              // width: Dimensions.width40*3,
                              // height: Dimensions.height40*3,
                              margin:EdgeInsets.symmetric(horizontal: Dimensions.width40,vertical: Dimensions.height40*3),
                              
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(Dimensions.radius15)
                              ),
                              
                            ));
                          },
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: AppColors.black,
                            size: Dimensions.iconSize24 * 1.2,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    SizedBox(
                      width: double.maxFinite * 0.8,
                      child: Divider(
                        color: AppColors.black,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BigText(text: 'Current Job Status'),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: AppColors.black,
                            size: Dimensions.iconSize24 * 1.2,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    SizedBox(
                      width: double.maxFinite * 0.8,
                      child: Divider(
                        color: AppColors.black,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BigText(text: 'Work History'),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: AppColors.black,
                            size: Dimensions.iconSize24 * 1.2,
                          ),
                        )
                      ],
                    ),
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height15,
            ),
            Button(
              on_pressed: () {},
              text: 'Log Out',
              width: Dimensions.width40 * 3.3,
              height: Dimensions.height20 * 2.6,
            )
          ],
        ),
      )),
    );
  }
}
