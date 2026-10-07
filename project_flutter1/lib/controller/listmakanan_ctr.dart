import 'package:get/get.dart';
import 'package:project_flutter1/models/makanan_models.dart';

class ListmakananController extends GetxController {

  List<MakananModel> listMakanan = [
    MakananModel(namaMakanan: "Soto Kudus", hargaMakanan: "10.000"),
    MakananModel(namaMakanan: "Nasi Pindang Kudus", hargaMakanan: "12.000"),
    MakananModel(namaMakanan: "Sate Kerbau", hargaMakanan: "25.000"),
    MakananModel(namaMakanan: "Garang Asem", hargaMakanan: "10.000"),
    MakananModel(namaMakanan: "Lentog Tanjung", hargaMakanan: "10.000"),
    MakananModel(namaMakanan: "Jenang Kudus", hargaMakanan: "15.000"),

  ];
}
