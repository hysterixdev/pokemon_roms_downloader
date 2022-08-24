import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomBar extends StatelessWidget {

  final String title;
  const CustomBar({Key? key, required this.title, required this.centerTitle}) : super(key: key);
  final Color backGround = const Color(0x810055FF);
  final bool centerTitle;
  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: backGround,
      ),
      elevation: 0.0,
      backgroundColor: backGround,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black87,
          shadows: [Shadow(color: Colors.grey, offset: Offset(-1.5, 0.5))],
          fontSize: 22,
          letterSpacing: 1.4,
        ),
      ),
      flexibleSpace: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black54, width: 2.0),
            borderRadius: BorderRadius.circular(5.0),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [backGround, const Color(0x810085FF), backGround],
            ),
          ),
        ),
      ),
    );
  }
}

