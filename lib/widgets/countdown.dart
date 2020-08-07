import 'dart:async';

import 'package:fcswebsite/main.dart';
import 'package:fcswebsite/widgets/countdown_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Countdown extends StatefulWidget {
  Countdown({Key key}) : super(key: key);

  @override
  _CountdownState createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  Timer _timer;
  Duration _remainingTime;


  @override
  void initState() {
    _remainingTime = Website.MEETING_DATE.difference(DateTime.now());
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _remainingTime = Website.MEETING_DATE.difference(DateTime.now());
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        CountdownNumber(
          number: _remainingTime.inDays.toString().padLeft(2, '0'),
          subtitle: "DAYS",
        ),
        SizedBox(width: 32),
        CountdownNumber(
          number: (_remainingTime.inHours % 24).toString().padLeft(2, '0'),
          subtitle: "HOURS",
        ),

        SizedBox(width: 32),
        CountdownNumber(
          number: (_remainingTime.inMinutes % 60).toString().padLeft(2, '0'),
          subtitle: "MINUTES",
        ),

        SizedBox(width: 32),
        CountdownNumber(
          number: (_remainingTime.inSeconds % 60).toString().padLeft(2, '0'),
          subtitle: "SECONDS",
        ),
      ],
    );
  }
}