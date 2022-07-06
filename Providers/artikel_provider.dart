import 'package:flutter/cupertino.dart';
import 'package:artikelapp/Models/detail_artikel_model.dart';
import 'package:artikelapp/Models/artikel_model.dart';
import 'package:artikelapp/Services/artikel_service.dart';

class ArtikelProvider extends ChangeNotifier {
  ArtikelProvider() {
    showListResep();
  }

  final ArtikelService _ArtikelService = ArtikelService();
  ArtikelModel artikelModel = ArtikelModel();
  DetailArtikelModel detailArtikelModel = DetailArtikelModel();

  //show list resep data
  showListResep() async {
    artikelModel = await _ArtikelService.getArtikel();
    notifyListeners();
  }

  //show detail resep data
  showDetailArtikel(String? id) async {
    print("id : $id");
    detailArtikelModel = await _ArtikelService.getDetailArtikel(key: id);
    notifyListeners();
  }
}

