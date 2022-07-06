import 'package:flutter/material.dart';
import 'package:artikelapp/Providers/artikel_provider.dart';
import 'package:artikelapp/Providers/artikel_provider.dart';
import 'package:artikelapp/Screens/detail_artikel.dart';
import 'package:provider/provider.dart';

class ArtikelScreen extends StatefulWidget {
  const ArtikelScreen({Key? key}) : super(key: key);

  @override
  State<ArtikelScreen> createState() => _ArtikelScreenState();
}

class _ArtikelScreenState extends State<ArtikelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('191011401061_ERWANTO'),
      ),
      body: Consumer<ArtikelProvider>( builder: (context, artikelProvider, child) { return ListView.builder(
            itemCount: artikelProvider.artikelModel.data?.length ?? 0,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailArtikel(
                        title: artikelProvider.artikelModel.data![index].title,
                      ),
                    ),
                  );
                  artikelProvider.showDetailArtikel(
                      artikelProvider.artikelModel.data![index].id.toString());
                },
                child: Card(
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                            artikelProvider.artikelModel.data![index].image!,
                            width: 100,
                            height: 100,
                            ),
                        Text(
                          "${artikelProvider.artikelModel.data![index].title}",
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
            padding: const EdgeInsets.all(18),
          );
        },
      ),
    );
  }
}
