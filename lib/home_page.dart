import 'package:flutter/material.dart';
import 'background.dart';
import 'component.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new ApplyBackground('assets/images/thomas-edison.jpg'),
          new FrostedGlass(
            'Our greatest weakness lies in giving up.',
            personName: 'Thomas A. Edison',
          ),
        ],
      ),
    );
  }
}
