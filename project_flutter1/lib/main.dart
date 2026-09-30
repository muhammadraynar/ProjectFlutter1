import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter1/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.registration, // Jangan sampai ketinggalan
      getPages: Routes.pages,            // Jangan sampai ketinggalan
    );
  }
}