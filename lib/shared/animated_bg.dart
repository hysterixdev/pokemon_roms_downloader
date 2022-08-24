import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class AnimBG extends StatefulWidget {
  const AnimBG({Key? key}) : super(key: key);

  @override
  State<AnimBG> createState() => _AnimBGState();
}

class _AnimBGState extends State<AnimBG> with TickerProviderStateMixin{

  //Defining Particles
  final Particle _particle = Particle();
  ParticleOptions particleOptions = ParticleOptions(
    image: Image.asset('assets/images/triangle.png'),
    baseColor: Colors.black,
    spawnOpacity: 0.25,
    opacityChangeRate: 0.25,
    minOpacity: 1.0,
    maxOpacity: 1.0,
    spawnMinSpeed: 15.0,
    spawnMaxSpeed: 30.0,
    spawnMinRadius: 7.0,
    spawnMaxRadius: 10.0,
    particleCount: 30,
  );


  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
      vsync: this,
      behaviour: RandomParticleBehaviour(options: particleOptions, paint: Paint()),
      child: const Text(''),
    );
  }
}
