import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_name_routing/firstPage.dart';
import 'package:getx_name_routing/secondPage.dart';
import 'package:getx_name_routing/thirdPage.dart';
import 'package:getx_name_routing/unknownPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "first",
      defaultTransition: Transition.leftToRight,
      getPages: [
        GetPage(name: '/first', page: () => FirstPage()),
        GetPage(name: '/second', page: () => secondPage()),
        GetPage(name: '/third', page: () => ThirdPage())
      ],
      unknownRoute: GetPage(name: '/unknown', page: () => UnknownPage()),
    );
  }
}
