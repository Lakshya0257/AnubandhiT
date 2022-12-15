import 'package:anubandhit/app/modules/homepage/view/homepage.dart';
import 'package:flutter/material.dart';

import '../app/modules/homepage/view/tabBar.dart';

Map<String, Widget Function(BuildContext)> appRoutes(){
  return {
    '/homepage':(context)=> const HomePage(),
    '/':(context)=> const TabBarWidget()
  };
}