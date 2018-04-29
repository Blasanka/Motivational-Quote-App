import 'package:flutter/material.dart';
import 'background.dart';
import 'component.dart';
import 'quote_model.dart';

class HomePage extends StatelessWidget {
  var quote = quotes[0];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new ApplyBackground(quote.imageURL),
          new FrostedGlass(
            quote.quote,
            personName: quote.personName,
          ),
        ],
      ),
    );
  }
}
