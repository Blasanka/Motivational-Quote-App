class Quote {
  final String quote;
  String personName;
  String imageURL;

  Quote(this.quote, {this.personName, this.imageURL});
}

List<Quote> quotes = [
  new Quote("Absorb what is useful, discard what is useless, and add what is specifically your own.", personName: "Bruce Lee", imageURL: "assets/images/bruce-lee.jpg"),
  new Quote("The way to get started is to quit talking and begin doing.", personName: "Walt Disney", imageURL: "assets/images/WaltDisney.jpg"),
  new Quote("Don't let small minds convince you that your dreams are too big.", personName: "John Lennon", imageURL: "assets/images/john-lennon.jpg")
];