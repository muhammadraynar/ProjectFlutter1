import 'package:flutter/material.dart';
import 'package:project_flutter1/controller/confirmreg_ctr.dart'; 
import 'package:get/get.dart';

class ConfirmRegPage extends StatelessWidget {
  ConfirmRegPage({super.key});

  // Sesuaikan nama Class controller kamu di sini (misal: ConfirmregCtr atau ConfirmRegCtr)
  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F9),
      appBar: AppBar(
        title: const Text(
          "Confirm Registration",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Card Informasi Registrasi
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.check_circle_outline_rounded,
                        size: 60,
                        color: Color(0xFF673AB7),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "Registrasi Berhasil",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Menggunakan Obx agar aman jika variabel nama menggunakan Rx / .obs
                      Obx(
                        () => Text(
                          "Nama: ${controller.nama}",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF673AB7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Tombol Oke
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF673AB7),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    "Oke",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}