import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String imagePath;
  final String regionName;

  const CustomContainer({
    Key? key,
    required this.imagePath,

    required this.regionName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/categories/$regionName');
      },
      child: Container(
        width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
          border: Border.all(width: 3.0, color: Colors.black87),
          borderRadius: BorderRadius.circular(8.0),
          color: const Color.fromARGB(200, 250, 150, 100),
        ),
        child: Column(
          children: [
            Flexible(child: Container()),
            CircleAvatar(
              foregroundImage: AssetImage(imagePath),
              radius: 50.0,
            ),
            Flexible(child: Container()),
            Center(
              child: Text(
                regionName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: Colors.blueGrey,
                  fontSize: 22.0,
                ),
              ),
            ),
            Flexible(child: Container()),
          ],
        ),
      ),
    );
  }
}
