

import 'dart:ui';

import 'package:fcswebsite/widgets/countdown.dart';
import 'package:fcswebsite/widgets/social_media_bar.dart';
import 'package:fcswebsite/widgets/social_media_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class HomeRoute extends StatelessWidget {
  HomeRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("background.jpg"),
              fit: BoxFit.cover
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
            color: Colors.black38,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: 200,
                      height: 200,
                      image: AssetImage("logo.png"),
                    ),
                    Text("Flutter Coffee Show", style: GoogleFonts.homemadeApple(
                      fontSize: 48
                    )),
                    SizedBox(height: 160),

                    Countdown(),
                    SizedBox(height: 40),

                    SocialMediaBar(),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  }

}
