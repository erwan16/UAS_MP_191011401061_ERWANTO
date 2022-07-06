import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:artikelapp/Providers/artikel_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailArtikel extends StatefulWidget {
  final String? title;
  final String? id;
  const DetailArtikel({this.title, this.id, Key? key}) : super(key: key);

  @override
  State<DetailArtikel> createState() => _DetailArtikelState();
}

class _DetailArtikelState extends State<DetailArtikel> {

  @override
  void initState() {
    
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // _provider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Consumer<ArtikelProvider>(
        builder: (context, artikelProvider, child) {
          return SingleChildScrollView(
            child: Card(
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                        artikelProvider.detailArtikelModel.data![0].image!),
                    Text(
                      artikelProvider.detailArtikelModel.data![0].title!,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
