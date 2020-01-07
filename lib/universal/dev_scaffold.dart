import 'package:flutter/material.dart';

class StockingScaffold extends StatelessWidget {
  final Widget body;

  const StockingScaffold({Key key, this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      color: Colors.white,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          body: body,
        ),
      ),
    );
  }
}
