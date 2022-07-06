import 'package:dio/dio.dart';
import 'package:artikelapp/Models/detail_artikel_model.dart';
import 'package:artikelapp/Models/artikel_model.dart';

class ArtikelService {
  //get list resep

  Future<ArtikelModel> getArtikel() async {
    var response = await Dio()
        .get('https://api.indosiana.com/api/articles');
    return ArtikelModel.fromJson(response.data);
  }

  //get detail artikel
  Future<DetailArtikelModel> getDetailArtikel({String? key}) async {
    var response = await Dio()
        .get('https://api.indosiana.com/api/articles/$key');
    print(key);
    print("response : $response");

    return DetailArtikelModel.fromJson(response.data);
  }
}
