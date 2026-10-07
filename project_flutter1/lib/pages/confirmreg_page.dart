import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter1/controller/confirmreg_ctr.dart';

class ConfirmRegPage extends StatelessWidget {
  ConfirmRegPage({super.key});

  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Confirm Registration")),
      body: Column(
        children: [
          Text(
            "Nama: ${controller.nama}",
            style: const TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Umur: ${controller.umur}",
            style: const TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Asal: ${controller.asal}",
            style: const TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Jenis Kelamin: ${controller.jenisKelamin}", // Tampilkan jenis kelamin
            style: const TextStyle(fontSize: 25, color: Colors.blue),
          ),

          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Oke"),
          ),
        ],
      ),
    );
  }
}