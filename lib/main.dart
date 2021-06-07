import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: QuoteList(),
));
class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}
class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    "Three things cannot long be hidden: the sun, the moon, and the truth.",
    "The writer has three sources: imagination, observation, and experience",
    "Life is the first gift, love is the second, and understanding the third.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Awesome Quotes"),
          centerTitle: true,
          backgroundColor: Colors.redAccent[850],
        ),
        body: Column(
          children: quotes.map((quote) => Text(quote)).toList(),
        )
    );
  }
}