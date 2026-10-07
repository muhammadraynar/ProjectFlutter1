import 'package:get/get.dart';

class ConfirmRegController extends GetxController {
  String nama = '';
  String umur = '';
  String asal = '';
  String jenisKelamin = ''; // Variabel jenis kelamin

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      nama = Get.arguments['name'] ?? '-';
      umur = Get.arguments['umur'] ?? '-';
      asal = Get.arguments['asal'] ?? '-';
      jenisKelamin = Get.arguments['jenis_kelamin'] ?? '-'; // Ambil data jenis kelamin
    }
  }
}