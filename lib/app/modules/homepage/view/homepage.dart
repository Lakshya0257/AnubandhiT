import 'package:anubandhit/app/modules/homepage/view/list_of_jobs.dart';
import 'package:flutter/material.dart';
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
                    BigText(
                      text: 'Job Opening',
                      size: 32,
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
