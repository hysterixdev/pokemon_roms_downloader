import 'package:open_file/open_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack_roms/res/assets_res.dart';
import 'package:hack_roms/shared/animated_bg.dart';
import 'package:hack_roms/shared/custom_app_bar.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> with TickerProviderStateMixin {

  _launchUrl({required link}) async {
    await launchUrlString(link, mode: LaunchMode.externalApplication);
  }
  
  Color backGround = const Color(0x810055FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomBar(
        title: 'Pokemon Hack Roms',
        centerTitle: false,
      ).build(context),
      body: Stack(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
          color: backGround,
          child: const AnimBG(),
        ),
        Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),

            // Find Roms Here
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/categories');
              },
              child: Container(
                height: 240,
                width: 240,
                decoration: BoxDecoration(
                  border: Border.all(width: 3.0, color: Colors.black87),
                  borderRadius: BorderRadius.circular(20),
                  gradient: const RadialGradient(
                      colors: [Colors.grey, Colors.blueGrey],
                      focalRadius: 140.0),
                ),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 30.0,
                    ),
                    CircleAvatar(
                      foregroundImage: AssetImage(AssetsRes.POKEBALL),
                      radius: 65.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                        child: Text(
                      'Find Roms Here',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        color: Colors.black87,
                        fontSize: 24.0,
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            const Divider(
              color: Colors.black87,
              thickness: 2.0,
              indent: 70,
              endIndent: 70,
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            GestureDetector(
              onTap: () {
                _launchUrl(link: 'https://m.apkhere.com/down/com.fastemulator.gba_1.8.0_paid');
              },
              child: Container(
                height: 240,
                width: 240,
                decoration: BoxDecoration(
                  border: Border.all(width: 3.0, color: Colors.black87),
                  borderRadius: BorderRadius.circular(20),
                  gradient: const RadialGradient(
                      colors: [Colors.cyanAccent, CupertinoColors.systemBlue],
                      focalRadius: 140.0),
                ),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 30.0,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(AssetsRes.CONSOLE),
                      backgroundColor: Colors.transparent,
                      radius: 65.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                        child: Text(
                      'Install MyBoy! Full',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        color: Colors.black87,
                        fontSize: 24.0,
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
                child: const Center(
                  child: Text(
                    'You Need To Install MyBoy! To Run These Roms !! Tutorial Video Will Be Available Soon!!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                        fontSize: 20.0,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
