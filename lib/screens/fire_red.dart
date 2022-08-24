import 'package:flutter/material.dart';

import 'package:hack_roms/shared/roms_list.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class FireRed extends StatefulWidget {
  const FireRed({Key? key}) : super(key: key);

  @override
  State<FireRed> createState() => _FireRedState();
}

class _FireRedState extends State<FireRed> {
  final List<Roms> fireRedRoms = [
    Roms(
        name: 'Pokemon Fire Red',
        link:
            'https://static.emulatorgames.net/roms/gameboy-advance/Pokemon%20-%20Fire%20Red%20Version%20(U)%20(V1.1).zip'),
    Roms(
        name: 'Pokemon Leaf Green',
        link:
            'https://static.emulatorgames.net/roms/gameboy-advance/Pokemon%20-%20Leaf%20Green%20Version%20(U)%20(V1.1).zip'),
    Roms(
        name: 'Pokemon Mega Fire Red',
        link:
            'https://classic.romsforever.cc/GameBoyAdvance/Pokemon%20-%20FireRed%20Version%20%28USA%29.zip'),
    Roms(
        name: 'Pokemon Ultra Violet',
        link:
            'https://www.emulatorgames.net/download/?rom=pokemon-ultra-violet-122-lsa-fire-red-hack'),
    Roms(
        name: 'Pokemon Ash Gray',
        link:
            'https://classic.romsforever.cc/Hack/ALL/Pokemon%20GBA%20Hack/Pokemon%20AshGray/ashgray-b4.5.3.zip'),
    Roms(
        name: 'Pokemon Radical Red',
        link:
            'https://classic.romsforever.cc/Hack/ALL/Pokemon%20GBA%20Hack/Pokemon%20Radical%20Red/radical-red-v2.1.zip'),
    Roms(
        name: 'Pokemon Adventures Red',
        link:
            'https://classic.romsforever.cc/Hack/3DS/Pokemon%20Adventure%20Red%20Chapter.zip'),
    Roms(
        name: 'Pokemon FireRed Rocket',
        link:
            'https://classic.romsforever.cc/Hack/GBA/Pokemon%20FireRed%20Rocket%20Edition.zip'),
    Roms(
        name: 'Pokemon Omega Red',
        link:
            'https://classic.romsforever.cc/Hack/ALL/Pokemon%20GBA%20Hack/Pokemon%20Omega%20Red/omega-red-v4_2.zip'),
    Roms(
        name: 'Pokemon Dark Violet',
        link:
            'https://classic.romsforever.cc/Hack/ALL/Pokemon%20GBA%20Hack/Pokemon%20DarkViolet/dark-violet-hrm-2019-04-08.zip'),
  ];

  //launch url in a browser
  _launchUrl({required link}) async {
    await launchUrlString(link, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: fireRedRoms
          .map((rom) => Column( crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton(
                onPressed: () {
                  _launchUrl(link: rom.link);
                },
                child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      color: const Color.fromARGB(200, 250, 150, 100),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 8.0),
                        child: Text(
                          rom.name,
                          style: const TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ))
          .toList(),
    );
  }
}
