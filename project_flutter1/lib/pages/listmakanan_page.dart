import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter1/controller/listmakanan_ctr.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListmakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Makanan"),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: controller.listMakanan.length,
        separatorBuilder: (context, index) => const Divider(height: 1), // Garis pemisah simpel
        itemBuilder: (context, index) {
          final makanan = controller.listMakanan[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            leading: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 194, 55, 197),
              child: Icon(Icons.fastfood, color: Colors.white, size: 20),
            ),
            title: Text(
              makanan.namaMakanan,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            subtitle: Text(
              "Rp ${makanan.hargaMakanan}",
              style: const TextStyle(color: Colors.grey),
            ),
            trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            onTap: () {
              // Aksi saat item diklik
            },
          );
        },
      ),
    );
  }
}