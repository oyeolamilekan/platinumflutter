import 'package:flutter/material.dart';
import 'package:plattromdell/pages/index.dart';

import 'utils/stockings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stockings",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: Stocking.google_sans_family,
        primaryColor: Stocking.primary_color,
        disabledColor: Stocking.disabled_color,
        cardColor: Stocking.card_color,
        canvasColor: Stocking.canvas_color,
        brightness: Stocking.brightness,
        buttonTheme: Theme.of(context)
            .buttonTheme
            .copyWith(colorScheme: ColorScheme.light()),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
      ),
      home: Index(),
    );
  }
}
