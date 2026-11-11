import 'package:get/get.dart';
import 'package:project_flutter1/pages/detailmakanan_page.dart';
import 'package:project_flutter1/pages/listmakanan_page.dart';
import 'package:project_flutter1/pages/registration_page.dart';
import 'package:project_flutter1/pages/confirmreg_page.dart';
import 'package:project_flutter1/login_page.dart';
import 'package:project_flutter1/pages/main_menu_page.dart';

class Routes {
  static const login = '/login';
  static const main_menu = '/main_menu';
  static const list_makanan = '/list_makanan';
  static const detail_makanan = '/detail_makanan';
  static const registration = '/registration';
  static const confirm_registration = '/confirm_registration';

  static final pages = [
    GetPage(
      name: login,
      page: () => LoginPage(),
    ),
    GetPage(
      name: main_menu,
      page: () => MainMenuPage(),
    ),
    GetPage(
      name: list_makanan,
      page: () => ListMakananPage(),
    ),
    GetPage(
      name: detail_makanan,
      page: () => const DetailMakananPage(),
    ),
    GetPage(
      name: registration,
      page: () => RegistrationPage(),
    ),
    GetPage(
      name: confirm_registration,
      page: () => ConfirmRegPage(),
    ),
  ];
}