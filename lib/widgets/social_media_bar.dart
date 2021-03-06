import 'package:fcswebsite/widgets/social_media_buttons.dart';
import 'package:flutter/material.dart';

class SocialMediaBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InstagramButton(),
        SizedBox(width: 28),
        MeetupButton(),
        SizedBox(width: 28),
        TwitterButton(),
      ],
    );
  }
}
