import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final RxString namaUser = "onlyrayyyyyyyy".obs;
  final RxString username = "@raynar".obs;
  final RxString bio = "hi".obs;
  final RxString fotoProfil = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn2eS6hNcp_bxISibrWtvjPr7LB_J2msNFlDH6l55Vug&s".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Obx(() => Text(
              username.value,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black87,
              ),
            )),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu_rounded, color: Colors.black87),
            onPressed: () {
              Get.snackbar("Menu", "Pengaturan profil diklik",
                  snackPosition: SnackPosition.BOTTOM);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Bagian Foto Profil bersih tanpa tombol ungu
            Center(
              child: Obx(() => CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: NetworkImage(fotoProfil.value),
                    onBackgroundImageError: (_, __) {},
                    child: fotoProfil.value.isEmpty
                        ? const Icon(Icons.person, size: 50, color: Colors.grey)
                        : null,
                  )),
            ),
            const SizedBox(height: 12),
            
            // Nama / Handle User
            Obx(() => Text(
                  namaUser.value,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                )),
            const SizedBox(height: 4),
            Obx(() => Text(
                  username.value,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                )),
            const SizedBox(height: 20),

            // Statistik ala TikTok (Mengikuti, Pengikut, Suka)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildStatItem("142", "Mengikuti"),
                const SizedBox(width: 24),
                _buildStatItem("3.8K", "Pengikut"),
                const SizedBox(width: 24),
                _buildStatItem("48.5K", "Suka"),
              ],
            ),
            const SizedBox(height: 20),

            // Bio / Deskripsi Singkat
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Obx(() => Text(
                    bio.value,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[800],
                    ),
                  )),
            ),
            const SizedBox(height: 30),

            const Divider(height: 1, thickness: 0.5),

            // Bagian Kosong (Tanpa Postingan)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.video_collection_outlined,
                    size: 64,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Belum ada postingan",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Video atau konten yang Anda buat akan muncul di sini.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}