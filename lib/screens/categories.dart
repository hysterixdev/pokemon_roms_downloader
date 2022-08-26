import 'package:flutter/material.dart';
import 'package:hack_roms/res/assets_res.dart';
import 'package:hack_roms/shared/animated_bg.dart';
import 'package:hack_roms/shared/category_button.dart';
import 'package:hack_roms/shared/custom_app_bar.dart';


class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomBar(title: 'Select By Region', centerTitle: true)
          .build(context),
      body: Stack(
        children: [
          Container(color: const Color(0x810055FF), child: const AnimBG()),
          Column(
            children: [
              const SizedBox(
                height: 32.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomContainer(
                    imagePath: AssetsRes.POKEBALL,
                    regionName: 'Kanto',
                  ),
                  CustomContainer(
                    imagePath: AssetsRes.POKEBALL,
                    regionName: 'Johto',
                  ),
                ],
              ),
              Flexible(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomContainer(
                    imagePath: AssetsRes.POKEBALL,
                    regionName: 'Hoenn',
                  ),
                  CustomContainer(
                    imagePath: AssetsRes.POKEBALL,
                    regionName: 'Sinnoh',
                  ),
                ],
              ),
              Flexible(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomContainer(
                    imagePath: AssetsRes.POKEBALL,
                    regionName: 'Unova',
                  ),
                ],
              ),
              Flexible(child: Container()),
            ],
          )
        ],
      ),
    );
  }
}
