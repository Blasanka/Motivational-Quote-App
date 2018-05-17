import 'package:flutter/material.dart';
import 'package:motivational_quote_app/lennon_page.dart';
import 'background.dart';
import 'component.dart';
import 'quote_model.dart';

class DisneyPage extends StatelessWidget {
  final Quote quoteObj = quotes[1];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new ApplyBackground(quoteObj.imageURL),
          new ComponentRow(quoteObj.quote, quoteObj.personName, route: new LennonPage(),)
        ],
      ),
    );
  }
}