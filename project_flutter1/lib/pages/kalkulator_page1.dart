import 'package:flutter/material.dart';
import 'package:project_flutter1/component/Costume_textField.dart';
import 'package:project_flutter1/controller/kalkulator_controller.dart';
import 'package:project_flutter1/component/costume_button_kalkulator.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      appBar: AppBar(
        title: const Text(
          "Kalkulator",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color(0xFF9575CD),
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            const SizedBox(height: 15),

            CostumeTextfield(
              textController: txtAngka1,
              myhint: "input angka 1",
            ),

            const SizedBox(height: 12),

            CostumeTextfield(
              textController: txtAngka2,
              myhint: "input angka 2",
            ),

            const SizedBox(height: 20),

            CostumeButtonKalkulator(
              text: "Tambah",
              onPressed: () {
                int angka1 = int.parse(txtAngka1.text);
                int angka2 = int.parse(txtAngka2.text);

                controller.tambah(angka1, angka2);
              },
            ),

            const SizedBox(height: 8),

            CostumeButtonKalkulator(
              text: "Kurang",
              onPressed: () {
                int angka1 = int.parse(txtAngka1.text);
                int angka2 = int.parse(txtAngka2.text);

                controller.kurang(angka1, angka2);
              },
            ),

            const SizedBox(height: 8),

            CostumeButtonKalkulator(
              text: "Kali",
              onPressed: () {
                int angka1 = int.parse(txtAngka1.text);
                int angka2 = int.parse(txtAngka2.text);

                controller.kali(angka1, angka2);
              },
            ),

            const SizedBox(height: 8),

            CostumeButtonKalkulator(
              text: "Bagi",
              onPressed: () {
                int angka1 = int.parse(txtAngka1.text);
                int angka2 = int.parse(txtAngka2.text);

                controller.bagi(angka1, angka2);
              },
            ),

            const SizedBox(height: 8),

            CostumeButtonKalkulator(
              text: "Reset",
              onPressed: () {
                controller.reset();

                txtAngka1.clear();
                txtAngka2.clear();
              },
            ),

            const SizedBox(height: 25),

            Obx(
              () => Text(
                "Hasil: ${controller.hasil.value}",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF5E35B1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}