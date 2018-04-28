import 'package:flutter/material.dart';
import 'package:motivational_quote_app/home_page.dart';

void main() => runApp(new QuoteApp());

class QuoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Motivational Quote App',
      home: new HomePage(),
    );
  }
}
