import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasil = 0.obs;

  // method tambah kurang kali dan bagi
  void tambah(int angka1, int angka2) {
    int hasilTambah = angka1 + angka2;
    hasil.value = hasilTambah;
    Get.snackbar(
      "hasil tambah",
      "hasilnya ${hasilTambah}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  void kurang(int angka1, int angka2) {
    int hasilKurang = angka1 - angka2;
    hasil.value = hasilKurang;
    Get.snackbar(
      "hasil kurang",
      "hasilnya ${hasilKurang}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  void kali(int angka1, int angka2) {
    int hasilKali = angka1 * angka2;
    hasil.value = hasilKali;
    Get.snackbar(
      "hasil kali",
      "hasilnya ${hasilKali}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  void bagi(int angka1, int angka2) {
  if (angka2 == 0) {
    Get.snackbar(
      "Error",
      "Tidak dapat membagi dengan angka 0",
      snackPosition: SnackPosition.BOTTOM,
    );
    return;
  }
  int hasilBagi = angka1 ~/ angka2;
  hasil.value = hasilBagi;
  Get.snackbar(
    "hasil bagi",
    "hasilnya ${hasilBagi}",
    snackPosition: SnackPosition.BOTTOM,
  );
}
void reset() {
  hasil.value = 0;
  Get.snackbar(
    "Reset",
    "Data berhasil dibersihkan",
    snackPosition: SnackPosition.BOTTOM,
  );
}
}