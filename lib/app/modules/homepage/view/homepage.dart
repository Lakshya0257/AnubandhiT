import 'package:anubandhit/app/modules/homepage/view/list_of_jobs.dart';
import 'package:flutter/material.dart';
import '../../../../utils/dimensions.dart';
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
                padding:  EdgeInsets.fromLTRB(Dimensions.width20, 0, Dimensions.width20, Dimensions.height10),
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
                        CircleAvatar(
                          radius: Dimensions.width20,
                          backgroundImage: NetworkImage(
                              'https://blog.readyplayer.me/content/images/2021/04/IMG_0689.PNG'),
                        ),
                      ],
                    ),
                    BigText(
                      text: 'Job Opening',
                      size: Dimensions.font26*1.23,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ))),
        Expanded(
            flex: 5,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const ListOfJobs();
                })),
      ]),
    ));
  }
}
