import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:project_flutter1/component/Costume_textField.dart';
import 'package:project_flutter1/routes.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // Controller input
  final TextEditingController txtNama = TextEditingController();
  final TextEditingController txtAlamat = TextEditingController();
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtNoWA = TextEditingController();

  // Variabel nilai terpilih
  String? selectedJenisKelamin = 'Laki-laki';

  // Opsi pilihan dropdown
  final List<String> listJenisKelamin = ['Laki-laki', 'Perempuan'];

  @override
  void dispose() {
    txtNama.dispose();
    txtAlamat.dispose();
    txtEmail.dispose();
    txtNoWA.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7FF),
      appBar: AppBar(
        title: const Text(
          "Registration",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Input Nama
            CostumeTextfield(
              textController: txtNama,
              myhint: "Input nama",
            ),

            // 2. Input Alamat
            CostumeTextfield(
              textController: txtAlamat,
              myhint: "Input alamat",
            ),

            // 3. Input Email
            CostumeTextfield(
              textController: txtEmail,
              myhint: "Input email",
              keyboardType: TextInputType.emailAddress,
            ),

            // 4. Input No WA
            CostumeTextfield(
              textController: txtNoWA,
              myhint: "Input No WA",
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),

            // 5. Dropdown Jenis Kelamin (Dipindah ke bawah)
            Container(
              color: Colors.white,
              child: DropdownButtonFormField<String>(
                value: selectedJenisKelamin,
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Color(0xFF673AB7),
                ),
                decoration: const InputDecoration(
                  hintText: "Pilih Jenis Kelamin",
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  border: InputBorder.none,
                ),
                dropdownColor: Colors.white,
                items: listJenisKelamin.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedJenisKelamin = newValue;
                  });
                },
              ),
            ),

            const SizedBox(height: 20),

            // Tombol Kirim / Send
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEDE7F6),
                    foregroundColor: const Color(0xFF673AB7),
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    Get.toNamed(
                      Routes.confirm_registration,
                      arguments: {
                        'name': txtNama.text,
                        'jenis_kelamin': selectedJenisKelamin ?? '',
                        'alamat': txtAlamat.text,
                        'email': txtEmail.text,
                        'no_wa': txtNoWA.text,
                      },
                    );
                  },
                  child: const Text("Send"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}