import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../widgets/big_text.dart';

class HomePage extends StatelessWidget {
  static launch(BuildContext context) => Navigator.pushNamed(context, '/');
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Expanded(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu_outlined,
                          ),
                        ),
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://blog.readyplayer.me/content/images/2021/04/IMG_0689.PNG'),
                        ),
                      ],
                    ),
                    BigText(text: 'Job Opening',size: 32,fontWeight: FontWeight.bold,),
                    
                  ],
                ))),
        Expanded(
            flex: 5,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.maxFinite,
                    height: 420,
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
                               
                                    child:SizedBox(
                                      width: double.maxFinite,
                                      height: 210,
                                      child: Image.network(
                                        'https://www.constructionexec.com/assets/site_18/images/article/081219110833.jpg?width=1280',
                                        fit: BoxFit.fill))),
                            ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40)),
                                
                                    child:Container(
                                      padding: EdgeInsets.symmetric(horizontal:20,vertical: 10),
                                      height: 200,
                                       child: Column(
                                      children: [
                                        Expanded(child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            BigText(text: 'Construction Worker',fontWeight: FontWeight.bold,),
                                            Row(
                                              children: [
                                                BigText(text: 'Vacancy ',fontWeight: FontWeight.bold,size: 15),
                                                BigText(text: '80',fontWeight: FontWeight.bold,color: AppColors.orange,),
                                              ],
                                            )
                                          ],
                                        )),
                                        Expanded(child: Row(
                                          
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Icon(Icons.wordpress_outlined,color: AppColors.orange,),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    BigText(text: '  Location',color: AppColors.orange,size: 15,fontWeight: FontWeight.bold),
                                                    BigText(text: 'Jodhpur, Rajasthan',color: AppColors.grey,size: 15,fontWeight: FontWeight.bold)

                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Icon(Icons.calendar_month,color: AppColors.orange,),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    BigText(text: '  Duration',color: AppColors.orange,size: 15,fontWeight: FontWeight.bold),
                                                    BigText(text: '3 months',color: AppColors.grey,size: 15,fontWeight: FontWeight.bold)

                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ))

                                      ],
                                    )))
                          ],
                        )),
                  );
                })),
      ]),
    ));
  }
}
