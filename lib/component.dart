import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  final String quote;
  final String personName;

  FrostedGlass(this.quote, {this.personName});

  Widget personNameWidget() {
    if(personName == null) {
      return new SizedBox();
    } else {
      return new Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.only(top: 10.0),
        child: new Text('~ $personName',
            style: new TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w300,
              letterSpacing: 0.5,
            )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screenWidth = mediaQuery.size.width;

    return new Center(
      child: new Container(
          width: screenWidth / 1.5,
          padding: const EdgeInsets.all(15.0),
          //here we can add color property but im gonna use box decoration
          decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.black.withOpacity(0.4),
              borderRadius: new BorderRadius.circular(10.0),
              boxShadow: [
                new BoxShadow(
                  color: Colors.black26,
                  offset: new Offset(5.0, 5.0),
                  blurRadius: 5.0,
                ),
              ]),
          child: new Column(
            mainAxisSize: MainAxisSize.min, // keep remember to add this line
            children: <Widget>[
              new Text(
                  quote,
                  style: new TextStyle(
                    color: Colors.white,
                    fontFamily: 'Gaegu',
                    fontSize: 22.0,
                  )),
              personNameWidget(),
            ],
          )),
    );
  }
}

class ComponentRow extends StatelessWidget {
  final String quote;
  final String personName;

  ComponentRow(this.quote, this.personName);

  Widget customButton(IconData icon) {
    return new Material(
      type: MaterialType.circle,
      color: Colors.black26,
      child: new InkWell(
        child: new Container(
          width: 50.0,
          height: 50.0,
          child: new Icon(
            icon,
            color: Colors.black54,
            size: 40.0,
          ),
        ),
        onTap: () => print('Hello'),
        splashColor: Colors.black45,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        customButton(Icons.arrow_left),
        new FrostedGlass(
          quote,
          personName: personName,
        ),
        customButton(Icons.arrow_right),
      ],
    );
  }
}
