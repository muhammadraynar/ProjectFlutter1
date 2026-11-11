import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter1/controller/main_menu_ctr.dart';
import 'package:project_flutter1/Menu/home_page.dart';
import 'package:project_flutter1/Menu/history_page.dart';
import 'package:project_flutter1/Menu/profile_page.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final MainMenuCtr controller = Get.put(MainMenuCtr());

  final List<Widget> pages = [
  HomePage(),
  HistoryPage(),
  ProfilePage(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}