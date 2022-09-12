import 'package:emi_clac_pr/screen/home/provider/homeProvider.dart';
import 'package:emi_clac_pr/screen/home/view/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => homeProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Homescreen(),
      },
    ),
  ));
}
