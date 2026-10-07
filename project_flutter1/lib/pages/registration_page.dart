import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter1/component/Costume_textField.dart';
import 'package:project_flutter1/routes.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final TextEditingController txtNama = TextEditingController();
  final TextEditingController txtUmur = TextEditingController();
  final TextEditingController txtAsal = TextEditingController();

  // List opsi jenis kelamin
  final List<String> listJenisKelamin = ['Laki-Laki', 'Perempuan'];
  
  // Variabel reaktif (GetX) untuk menyimpan pilihan jenis kelamin
  final RxnString selectedJenisKelamin = RxnString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registration Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextfield(txtController: txtNama, myHint: "input name"),
            CustomTextfield(txtController: txtUmur, myHint: "input age"),
            CustomTextfield(txtController: txtAsal, myHint: "input origin/address"),
            
            // Dropdown dibungkus Obx agar UI memperbarui nilai pilihan secara otomatis
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Obx(
                () => DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Pilih Jenis Kelamin",
                  ),
                  value: selectedJenisKelamin.value,
                  items: listJenisKelamin.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    selectedJenisKelamin.value = newValue; // Update nilai reaktif
                  },
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  Routes.confirm_registration,
                  arguments: {
                    'name': txtNama.text,
                    'umur': txtUmur.text,
                    'asal': txtAsal.text,
                    'jenis_kelamin': selectedJenisKelamin.value ?? '-',
                  },
                );
              },
              child: const Text("Send"),
            ),
          ],
        ),
      ),
    );
  }
}