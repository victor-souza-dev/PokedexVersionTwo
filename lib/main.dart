import 'package:flutter/material.dart';
import 'package:pokedex/screens/home/home.dart';
import 'package:pokedex/style.dart';


void main() {
  runApp(MaterialApp(
    title: "Pokédex",
    home: Home(),
    theme: ThemeData(
      primarySwatch: redTheme,
    ),
    debugShowCheckedModeBanner: false,
  ));
}
