import 'package:flutter/material.dart';
import 'package:galaxy_planets/screen/detail_page.dart';
import 'package:galaxy_planets/screen/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'detail_page': (context) => const DetailPage(),
      },
    ),
  );
}
