import 'package:get/get.dart';
import 'package:project_flutter1/pages/listmakanan_page.dart';
import 'package:project_flutter1/pages/registration_page.dart';
import 'package:project_flutter1/pages/confirmreg_page.dart';

class Routes {
  // Wajib menggunakan awalan '/'
  static const String registration = '/registration';
  static const String confirm_registration = '/confirm_registration';
  static const String list_makanan = '/list_makanan';

  // PASTIKAN ada kata 'static final List<GetPage>' di bawah ini:
  static final List<GetPage> pages = [
    GetPage(
      name: registration,
      page: () => RegistrationPage(),
    ),
    GetPage(
      name: confirm_registration,
      page: () => ConfirmRegPage(),
    ),
    GetPage(
      name: list_makanan,
      page: () => ListMakananPage(),
    ),
  ];
}