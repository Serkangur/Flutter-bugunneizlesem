import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.grey[300],
            centerTitle: true,
            title: Text(
              'BUGÜN NE İZLESEM',
              style: GoogleFonts.anton(color: Colors.black, fontSize: 30),
            ),
          ),
          body: FilmSayfasi()),
    );
  }
}

class FilmSayfasi extends StatefulWidget {
  //const FilmSayfasi({Key? key}) : super(key: key);
  @override
  State<FilmSayfasi> createState() => _FilmSayfasiState();
}

class _FilmSayfasiState extends State<FilmSayfasi> {
  int filmno = 1;

  int dizino = 1;

  int animasyon = 1;

  List<String> filmadlari = [
    'inception',
    'interstellar',
    'parasıte',
    'köstebek',
    'joker',
    '1917'
  ];
  List<String> diziadlari = [
    'shorlock holmes',
    'şahsiyet',
    'game of thrones',
    'breaking bad',
  ];
  List<String> animasyonlar = [
    'buz dedvri',
    'canavarlar okulu',
    'nemo',
    'aslan kral',
  ];
  void hepsiniYenile() {
    setState(() {
      filmno = Random().nextInt(6) + 1;
      dizino = Random().nextInt(4) + 1;
      animasyon = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                //color: Colors.white,
                //highlightColor: Colors.lightBlue[300],
                splashColor: Colors.lightBlueAccent,
                onPressed: hepsiniYenile,
                child: Image.asset('assets/film$filmno.jpg')),
          )),
          Text(
            filmadlari[filmno - 1],
            style: GoogleFonts.anton(fontSize: 20, color: Colors.white),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  highlightColor: Colors.lightBlueAccent,
                  onPressed: hepsiniYenile,
                  child: Image.asset('assets/dizi$dizino.jpg')),
            ),
          ),
          Text(
            diziadlari[dizino - 1],
            style: GoogleFonts.anton(fontSize: 20, color: Colors.white),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5.0,
              color: Colors.lime,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  highlightColor: Colors.lightBlueAccent,
                  onPressed: hepsiniYenile,
                  child: Image.asset('assets/animasyon$animasyon.jpg')),
            ),
          ),
          Text(
            animasyonlar[animasyon - 1],
            style: GoogleFonts.anton(fontSize: 20, color: Colors.white),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5.0,
              color: Colors.lime,
            ),
          ),
        ],
      ),
    );
  }
}
