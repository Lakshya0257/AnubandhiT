import 'package:anubandhit/app/modules/homepage/view/homepage.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> appRoutes(){
  return {
    '/':(context)=> const HomePage()
  };
}