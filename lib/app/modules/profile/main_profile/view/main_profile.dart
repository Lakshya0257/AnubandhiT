// ignore_for_file: prefer_const_constructors

import 'package:anubandhit/widgets/big_text.dart';
import 'package:anubandhit/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/dimensions.dart';


class MainProfilePage extends StatefulWidget {
  static launch(BuildContext context) =>
      Navigator.pushNamed(context, '/main-profile');
  const MainProfilePage({super.key});

  @override
  State<MainProfilePage> createState() => _MainProfilePageState();
}

class _MainProfilePageState extends State<MainProfilePage> {
  bool onTapBankDetails = false;
  bool onTapCurrentJobStatus = false;
  bool onTapWorkHistory = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
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
                IconButton(
                  icon: Icon(
                    Icons.menu_outlined,
                    color: AppColors.black,
                  ),
                  onPressed: () {},
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
              height: (() {
                //! your code here

                if (onTapBankDetails ||
                    onTapCurrentJobStatus ||
                    onTapWorkHistory) {
                  return Dimensions.height40 * 10;
                } else {
                  return Dimensions.height40 * 5;
                }
              }()),
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
                  child: SingleChildScrollView(
                    child: Column(children: [
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          onTapBankDetails
                              ? Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xFFFFF0D2)),
                                        child: BigText(
                                          text: 'Bank Details',
                                          fontWeight: FontWeight.w600,
                                        )),
                                    SizedBox(
                                      width: Dimensions.width20,
                                    ),
                                    Icon(
                                      Icons.edit_outlined,
                                      color: AppColors.black,
                                      size: Dimensions.iconSize24 * 1.2,
                                    )
                                  ],
                                )
                              : SizedBox(
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFFFFF0D2)),
                                      child: BigText(text: 'Bank Details')),
                                ),
                          GestureDetector(
                            onTap: () {
                              // Get.dialog(Container(

                              //   margin: EdgeInsets.symmetric(
                              //       horizontal: Dimensions.width40,
                              //       vertical: Dimensions.height40 * 3),

                              //   decoration: BoxDecoration(
                              //       color: AppColors.white,
                              //       borderRadius: BorderRadius.circular(
                              //           Dimensions.radius15)),
                              // ));
                              setState(() {
                                onTapBankDetails = !onTapBankDetails;
                              });
                            },
                            child: Icon(
                              onTapBankDetails
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              color: AppColors.black,
                              size: Dimensions.iconSize24 * 1.2,
                            ),
                          )
                        ],
                      ),
                      onTapBankDetails
                          ? SizedBox(
                              height: Dimensions.height10,
                            )
                          : SizedBox(),
                      onTapBankDetails
                          ? Container(
                              width: double.maxFinite,
                              height: Dimensions.height40 * 5.5,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: AppColors.white),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Dimensions.width10 * 1.5,
                                    vertical: Dimensions.height10 * 1.5),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BigText(text: 'Bank Name'),
                                    BigText(text: 'Branch Name'),
                                    BigText(text: 'IFSC/ branch code'),
                                    BigText(text: 'Account Number'),
                                    BigText(text: 'Mobile Number'),
                                  ],
                                ),
                              ),
                            )
                          : SizedBox(
                              height: Dimensions.height10,
                            ),
                      onTapBankDetails
                          ? SizedBox()
                          : SizedBox(
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
                          onTapCurrentJobStatus
                              ? Row(
                                  children: [
                                    BigText(
                                      text: 'Current Job Status',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(
                                      width: Dimensions.width20,
                                    ),
                                    Icon(
                                      Icons.edit_outlined,
                                      color: AppColors.black,
                                      size: Dimensions.iconSize24 * 1.2,
                                    )
                                  ],
                                )
                              : BigText(text: 'Current Job Status'),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                onTapCurrentJobStatus = !onTapCurrentJobStatus;
                              });
                            },
                            child: Icon(
                              onTapCurrentJobStatus
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              color: AppColors.black,
                              size: Dimensions.iconSize24 * 1.2,
                            ),
                          )
                        ],
                      ),
                      onTapCurrentJobStatus
                          ? SizedBox(
                              height: Dimensions.height10,
                            )
                          : SizedBox(),
                      onTapCurrentJobStatus
                          ? Container(
                              width: double.maxFinite,
                              height: Dimensions.height40 * 7.5,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: AppColors.white),
                              child: Column(children: [
                                TimelineTile(
                                  contents: Card(
                                    child: Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('contents'),
                                    ),
                                  ),
                                  nodeAlign: TimelineNodeAlign.start,
                                  node: TimelineNode(
                                    indicator: SizedBox(
                                      height: Dimensions.height18,
                                      width: Dimensions.height18,
                                      child: Checkbox(
                                        checkColor: Colors.white,
                                        fillColor: MaterialStateProperty.all(
                                            Color(0xFF029B02)),
                                        value: isChecked1,
                                        shape: CircleBorder(),
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked1 = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    endConnector: SizedBox(
                                        height: Dimensions.height15,
                                        child: SolidLineConnector(
                                          color: AppColors.grey,
                                        )),
                                  ),
                                ),
                                TimelineTile(
                                  contents: Card(
                                    child: Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('contents'),
                                    ),
                                  ),
                                  nodeAlign: TimelineNodeAlign.start,
                                  node: TimelineNode(
                                    //? to remove default padding of checkbox, wrap it inside SizedBox and give dimensions.
                                    indicator: SizedBox(
                                      height: Dimensions.height18,
                                      width: Dimensions.height18,
                                      child: Checkbox(
                                        checkColor: Colors.white,
                                        fillColor: MaterialStateProperty.all(
                                            Color(0xFF029B02)),
                                        value: isChecked2,
                                        shape: CircleBorder(),
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked2 = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    startConnector: SizedBox(
                                        height: Dimensions.height15,
                                        child: SolidLineConnector(
                                          color: AppColors.grey,
                                        )),
                                    endConnector: SizedBox(
                                        height: Dimensions.height15,
                                        child: SolidLineConnector(
                                          color: AppColors.grey,
                                        )),
                                  ),
                                ),
                                TimelineTile(
                                  contents: Card(
                                    child: Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('contents'),
                                    ),
                                  ),
                                  nodeAlign: TimelineNodeAlign.start,
                                  node: TimelineNode(
                                    //? to remove default padding of checkbox, wrap it inside SizedBox and give dimensions.
                                    indicator: SizedBox(
                                      height: Dimensions.height18,
                                      width: Dimensions.height18,
                                      child: Checkbox(
                                        checkColor: Colors.white,
                                        fillColor: MaterialStateProperty.all(
                                            Color(0xFF029B02)),
                                        value: isChecked3,
                                        shape: CircleBorder(),
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked3 = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    startConnector: SizedBox(
                                        height: Dimensions.height15,
                                        child: SolidLineConnector(
                                          color: AppColors.grey,
                                        )),
                                    endConnector: SizedBox(
                                        height: Dimensions.height15,
                                        child: SolidLineConnector(
                                          color: AppColors.grey,
                                        )),
                                  ),
                                ),TimelineTile(
                                  contents: Card(
                                    child: Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('contents'),
                                    ),
                                  ),
                                  nodeAlign: TimelineNodeAlign.start,
                                  node: TimelineNode(
                                    //? to remove default padding of checkbox, wrap it inside SizedBox and give dimensions.
                                    indicator: SizedBox(
                                      height: Dimensions.height18,
                                      width: Dimensions.height18,
                                      child: Checkbox(
                                        checkColor: Colors.white,
                                        fillColor: MaterialStateProperty.all(
                                            Color(0xFF029B02)),
                                        value: isChecked4,
                                        shape: CircleBorder(),
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked4 = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    startConnector: SizedBox(
                                        height: Dimensions.height15,
                                        child: SolidLineConnector(
                                          color: AppColors.grey,
                                        )),
                                    endConnector: SizedBox(
                                        height: Dimensions.height15,
                                        child: SolidLineConnector(
                                          color: AppColors.grey,
                                        )),
                                  ),
                                ),TimelineTile(
                                  contents: Card(
                                    child: Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('contents'),
                                    ),
                                  ),
                                  nodeAlign: TimelineNodeAlign.start,
                                  node: TimelineNode(
                                    //? to remove default padding of checkbox, wrap it inside SizedBox and give dimensions.
                                    indicator: SizedBox(
                                      height: Dimensions.height18,
                                      width: Dimensions.height18,
                                      child: Checkbox(
                                        checkColor: Colors.white,
                                        fillColor: MaterialStateProperty.all(
                                            Color(0xFF029B02)),
                                        value: isChecked5,
                                        shape: CircleBorder(),
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked5 = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    startConnector: SizedBox(
                                        height: Dimensions.height15,
                                        child: SolidLineConnector(
                                          color: AppColors.grey,
                                        )),
                                    endConnector: SizedBox(
                                        height: Dimensions.height15,
                                        child: SolidLineConnector(
                                          color: AppColors.grey,
                                        )),
                                  ),
                                ),
                              ]),
                            )
                          : SizedBox(
                              height: Dimensions.height10,
                            ),
                      onTapCurrentJobStatus
                          ? SizedBox()
                          : SizedBox(
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
                          onTapWorkHistory
                              ? Row(
                                  children: [
                                    BigText(
                                      text: 'Work History',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(
                                      width: Dimensions.width20,
                                    ),
                                    Icon(
                                      Icons.edit_outlined,
                                      color: AppColors.black,
                                      size: Dimensions.iconSize24 * 1.2,
                                    )
                                  ],
                                )
                              : BigText(text: 'Work History'),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                onTapWorkHistory = !onTapWorkHistory;
                              });
                            },
                            child: Icon(
                              onTapWorkHistory
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              color: AppColors.black,
                              size: Dimensions.iconSize24 * 1.2,
                            ),
                          )
                        ],
                      ),
                      onTapWorkHistory
                          ? SizedBox(
                              height: Dimensions.height10,
                            )
                          : SizedBox(),
                      onTapWorkHistory
                          ? Container(
                              width: double.maxFinite,
                              height: Dimensions.height40 * 5.5,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: AppColors.white),
                            )
                          : SizedBox(
                              height: Dimensions.height10,
                            ),
                    ]),
                  ),
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