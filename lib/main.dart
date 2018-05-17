import 'package:flutter/material.dart';
import 'package:motivational_quote_app/disney_page.dart';
import 'package:motivational_quote_app/home_page.dart';
import 'package:motivational_quote_app/lennon_page.dart';

void main() => runApp(new QuoteApp());

class QuoteApp extends StatelessWidget {
  List<Widget> pages = [HomePage(), DisneyPage(), LennonPage()];
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Motivational Quote App',
      home: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (BuildContext context, int index) => pages[index],
      ),
    );
  }
}
