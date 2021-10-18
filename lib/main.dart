import 'package:flutter/material.dart';
import 'quote.dart';
import 'quoteCard.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Chris Dr.', text: 'Blah blah, They all keep talking'),
    Quote(author: 'dsdsds Dr.', text: 'Needs to be re done'),
    Quote(author: 'dcss Dr.', text: 'Can do better'),
    Quote(author: 'veeoe Dr.', text: 'Review functions')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          title: Text("Quote List"),
          centerTitle: true,
          backgroundColor: Colors.blue[900]),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
