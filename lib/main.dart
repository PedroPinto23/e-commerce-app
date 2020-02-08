import 'package:flutter/material.dart';
import 'screens/HomeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Clothes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color.fromARGB(255, 4, 125, 141)),
      home: HomeScreen(),
    ),
  );
}
