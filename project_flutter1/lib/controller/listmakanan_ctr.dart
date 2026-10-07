import 'package:get/get.dart';
import 'package:project_flutter1/models/makanan_models.dart';

class ListmakananController extends GetxController {

  List<MakananModel> listMakanan = [
    MakananModel(namaMakanan: "Soto Ayam", hargaMakanan: "10.000"),
    MakananModel(namaMakanan: "Mie Goreng", hargaMakanan: "12.000"),
    MakananModel(namaMakanan: "Ayam Bakar", hargaMakanan: "25.000"),
    MakananModel(namaMakanan: "Nasi Goreng", hargaMakanan: "10.000"),
    MakananModel(namaMakanan: "Mie Ayam", hargaMakanan: "10.000"),
  ];

}