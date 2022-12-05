import 'package:flutter/material.dart';
class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favourites'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('this is the favourites page'),
        ),
      ),
    );
  }
}
