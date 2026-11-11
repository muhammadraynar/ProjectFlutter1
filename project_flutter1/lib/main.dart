import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Flutter 1',
      // Langsung arahkan halaman pertama kali dijalankan ke List Makanan
      initialRoute: Routes.list_makanan,
      // Mendaftarkan seluruh rute dari file routes.dart
      getPages: Routes.pages,
    );
  }
}