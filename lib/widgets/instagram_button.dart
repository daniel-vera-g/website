import 'dart:html';
import 'package:flutter/material.dart';

class InstagramButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Follow us on Instagram!",
      child: Container(
        height: 60,
        width: 60,
        child: Material(
          color: Colors.black38,
          borderRadius: BorderRadius.all(Radius.circular(200)),
          child: InkWell(
            onTap: () async {
              window.open("https://instagram.com/flutter.coffee", "Instagram");
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage("instagram.png")),
            ),
          ),
        ),
      ),
    );
  }
}
