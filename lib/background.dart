import 'dart:ui';
import 'package:flutter/material.dart';

class ApplyBackground extends StatelessWidget {
  final String imgURL;

  ApplyBackground(this.imgURL);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(imgURL),
          fit: BoxFit.cover,
        ),
      ),
      child: new BackdropFilter(
        filter: new ImageFilter.blur(
          sigmaX: 3.0,
          sigmaY: 3.0,
        ),
        child: new Container(
          decoration: new BoxDecoration(
            color: Colors.black.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
