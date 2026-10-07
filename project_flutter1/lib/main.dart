import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter1/routes.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project_flutter1/pages/listmakanan_page.dart';
import 'package:project_flutter1/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Learning App",
      initialRoute: Routes.list_makanan,
      getPages: Routes.pages,
    );
  }
}