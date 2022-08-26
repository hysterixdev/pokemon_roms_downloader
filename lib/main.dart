import 'package:flutter/material.dart';
import 'package:hack_roms/screens/kanto.dart';
import 'screens/home.dart';
import 'screens/downloads.dart';
import 'screens/categories.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/categories': (context) => const Categories(),
        '/categories/Kanto': (context) => const FireRed(),
        '/downloads': (context) => const Downloads(),
      },
    ));
}