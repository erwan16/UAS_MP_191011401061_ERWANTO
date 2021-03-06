import 'package:flutter/material.dart';
import 'package:artikelapp/Providers/artikel_provider.dart';
import 'package:artikelapp/Screens/artikel_screen.dart';
import 'package:artikelapp/Providers/artikel_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ArtikelProvider>(
          create: (context) => ArtikelProvider(),
        ),
       
      ],
      child: MaterialApp(
        title: 'Artikel App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ArtikelScreen(),
      ),
    );
  }
}
