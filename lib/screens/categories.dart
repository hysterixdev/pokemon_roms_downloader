import 'package:flutter/material.dart';
import 'package:hack_roms/shared/animated_bg.dart';
import 'package:hack_roms/shared/roms_list.dart';

import 'fire_red.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fire Red Hacks'),
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Container(color: const Color(0x810055FF), child: const AnimBG()),
          const FireRed(),
        ],
      ),
    );
  }
}
