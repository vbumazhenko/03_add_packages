// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test app'),
      ),
      body: CarouselSlider(
        options: CarouselOptions(height: 400.0),
        items: [
          SvgPicture.asset('assets/images/beer.svg'),
          SvgPicture.network(
              'http://upload.wikimedia.org/wikipedia/commons/0/02/SVG_logo.svg'),
        ],
      ),
    );
  }
}
