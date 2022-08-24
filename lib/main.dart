import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/downloads.dart';
import 'screens/categories.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/categories': (context) => Categories(),
        '/downloads': (context) => Downloads(),
      },
    ));
}