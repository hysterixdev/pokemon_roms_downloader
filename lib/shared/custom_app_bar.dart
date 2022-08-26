import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomBar extends StatelessWidget {
  final String title;
  final bool centerTitle;
  final Color backGround = const Color(0x810055FF);

  const CustomBar({Key? key, required this.title, required this.centerTitle})
      : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: backGround,
      ),
      leading: Lead(leading: centerTitle),
      leadingWidth: centerTitle ? 30.0 : 0.0,
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

class Lead extends StatelessWidget {
  final bool leading;

  const Lead({Key? key, required this.leading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (leading == true) {
      return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios),
        color: Colors.black87,
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
      );
    } else {
      return const SizedBox(height: 0.0, width: 0.0);
    }
  }
}
