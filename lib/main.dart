import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuotesList()
  ));
}

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<Quote> quotes = [
    Quote(author: 'Osca Wilde', text: 'Be yourself; everyone else is taken'),
    Quote(author: 'Oscar Wilde', text: 'Be yourself; evryone else is taken'),
    Quote(author: 'Osca Wilde', text: 'Be yourself; evryone else is already taken')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete:(){
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      )
    );
  }
}

//quotes.map((quote) => Text(quote)).toList()
