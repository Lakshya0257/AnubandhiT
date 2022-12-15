import 'package:anubandhit/widgets/button.dart';
import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../widgets/big_text.dart';

class ListOfJobs extends StatefulWidget {
  const ListOfJobs({super.key});

  @override
  State<ListOfJobs> createState() => _ListOfJobsState();
}

class _ListOfJobsState extends State<ListOfJobs> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                    width: double.maxFinite,
                    height: 470,
                    child: GestureDetector(
                      onTap: (){
                        print(MediaQuery.of(context).size.width.toString()+'  '+MediaQuery.of(context).size.height.toString());
                      },
                      child: Card(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          elevation: 7,
                          child: Column(
                            children: [
                              ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40)),
                                  child: SizedBox(
                                      width: double.maxFinite,
                                      height: 210,
                                      child: Image.network(
                                          'https://www.constructionexec.com/assets/site_18/images/article/081219110833.jpg?width=1280',
                                          fit: BoxFit.fill))),
                              ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(40),
                                      bottomRight: Radius.circular(40)),
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      height: 250,
                                      child: Column(
                                        children: [
                                          Expanded(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BigText(
                                                text: 'Construction Worker',
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Row(
                                                children: [
                                                  BigText(
                                                      text: 'Vacancy ',
                                                      fontWeight: FontWeight.bold,
                                                      size: 15),
                                                  BigText(
                                                    text: '80',
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.orange,
                                                  ),
                                                ],
                                              )
                                            ],
                                          )),
                                          Expanded(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Icon(
                                                    Icons.language_outlined,
                                                    color: AppColors.orange,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      BigText(
                                                          text: '  Location',
                                                          color: AppColors.orange,
                                                          size: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      BigText(
                                                          text:
                                                              '  Jodhpur, Rajasthan',
                                                          color: AppColors.grey,
                                                          size: 15,
                                                          fontWeight:
                                                              FontWeight.bold)
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Icon(
                                                    Icons.calendar_month,
                                                    color: AppColors.orange,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      BigText(
                                                          text: '  Duration',
                                                          color: AppColors.orange,
                                                          size: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      BigText(
                                                          text: '  3 months',
                                                          color: AppColors.grey,
                                                          size: 15,
                                                          fontWeight:
                                                              FontWeight.bold)
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          )),
                                          Expanded(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Icon(
                                                    Icons.lock,
                                                    color: AppColors.orange,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      BigText(
                                                          text: '  Company',
                                                          color: AppColors.orange,
                                                          size: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      BigText(
                                                          text:
                                                              '  XYZ Steel Pvt Ltd.',
                                                          color: AppColors.grey,
                                                          size: 15,
                                                          fontWeight:
                                                              FontWeight.bold)
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Icon(
                                                    Icons.money,
                                                    color: AppColors.orange,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      BigText(
                                                          text: '  Pay',
                                                          color: AppColors.orange,
                                                          size: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      BigText(
                                                          text: '  ₹650/day',
                                                          color: AppColors.grey,
                                                          size: 15,
                                                          fontWeight:
                                                              FontWeight.bold)
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          )),
                                          Expanded(
                                              child: Row(
                                           
                                            children: [
                                              Expanded(child: Button(on_pressed: (){}, text: 'Detail',boxBorder: Border.all(color: AppColors.orange),margin: const EdgeInsets.symmetric(horizontal: 10),textColor: AppColors.orange,textSize: 15,)),
                                               Expanded(child: Button(on_pressed: (){}, text: 'Apply Now',boxBorder: null,margin: const EdgeInsets.symmetric(horizontal: 10),textColor: AppColors.white,color: AppColors.orange,textSize: 15,),)
                                            ]
                                          ))
                                        ],
                                      )))
                            ],
                          )),
                    ),
                  );
  }
}