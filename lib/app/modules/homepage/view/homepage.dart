import 'package:anubandhit/app/modules/homepage/view/tabBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static launch(BuildContext context)=>Navigator.pushNamed(context, '/');
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:const TabBarWidget(),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.mic),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}