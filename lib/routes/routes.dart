import 'package:anubandhit/app/modules/homepage/view/homepage.dart';
import 'package:flutter/material.dart';

import '../app/modules/detail_jobs/view/detail_job.dart';
import '../app/modules/homepage/view/tabBar.dart';

Map<String, Widget Function(BuildContext)> appRoutes(){
  return {
    '/homepage':(context)=> const HomePage(),
    '/detailJob':(context)=> DetailJob(),
    '/':(context)=> const TabBarWidget()
  };
}